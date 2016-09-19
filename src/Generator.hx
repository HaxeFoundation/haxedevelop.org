package;
import haxe.io.Error;
import haxe.Json;
import sys.FileSystem;
import sys.io.File;
import templo.Template;
using StringTools;

/**
 * @author Mark Knol
 */
class Generator {
  public var contentPath = "./";
  public var outputPath = "./";
  public var basePath = "";
  
  private var _pages:Array<Page> = [];
  private var _navigation = [];
  private var _releases:Array<Release> = [];
  private var _currentRelease:Release;
  
  public function new() {
    
  }
  
  /**
   * Build the HaxeDevelop website with static website generator.
   * @param doMinify minifies the HTML output.
   */
  public function build (doMinify:Bool = false) {
    getReleases();
    addGeneralPages();
    addReleasesPages();
    addDocumentationPages();
    addBlogPages();
    
    for (page in _pages) {
      // set the data for the page
      var data = {
        title: '${page.title} - HaxeDevelop', 
        year: Date.now().getFullYear(), // we're professional now
        currentDate: Date.now(), 
        baseHref: getBaseHref(page),
        sidebar: _navigation,
        pages: _pages,
        currentPage: page,
        currentRelease: _currentRelease,
        releases: _releases,
        pageContent: null,
        absoluteUrl: getAbsoluteUrl(page),
        customData: page.customData
      }
      if (page.contentPath != null) {
        data.pageContent = page.pageContent = getContent(contentPath + page.contentPath, data);
      }
      trace("generating " + outputPath + page.outputPath);
      
      // execute the template
      var template = Template.fromFile(contentPath + page.templatePath);
      var html = template.execute(data);
      
      if (doMinify) {
        // strip crap
        var length = html.length;
        html = Minifier.removeComments(Minifier.minify(html));
        var newLength = html.length;
        trace("optimized " + (Std.int(100 / length * (length - newLength) * 100) / 100) + "%");
      }
      
      // write output into file
      var targetDirectory = getDirectoryPath(outputPath + page.outputPath);
      if (!FileSystem.exists(targetDirectory)) {
        FileSystem.createDirectory(targetDirectory);
      }
      // write output into file
      File.saveContent(outputPath + page.outputPath, html);
    }
  }

  function addBlogPages() 
  {
    var blogs:Array<Page> = [];
    var blogPath = "/blog/";
    var files = FileSystem.readDirectory(contentPath + blogPath);
    files.reverse();
    for (file in files) {
      if (!FileSystem.isDirectory(contentPath + blogPath + file)) {
        var date = file.split(" ")[0];
        var id = getWithoutExtension(file.split(" ")[1]);
        var page = {
          title: getDocumentationTitle(blogPath + file),
          description: getDescription(blogPath + file),
          templatePath:"layout-page-blog.mtt",
          contentPath: blogPath + file,
          outputPath: 'blog/$date/$id.html',
          customData: {fullDate: Date.fromString(date), date: date, blogs:blogs}
        };
        blogs.push(page);
        _pages.push(page);
      }
    }
    _pages.push({
      title: "RSS feed",
      templatePath: "rss.mtt",
      description:null,
      contentPath: null,
      outputPath: "rss.xml",
      customData: {blogs:blogs}
    });
    _pages.push({
      title: "Blog",
      description: "Announcements, Case Studies and Tech Insights from the HaxeDevelop team",
      templatePath:"layout-page-blog.mtt",
      contentPath: "blog.mtt",
      outputPath: "blog/index.html",
      customData: {blogs:blogs}
    });
	}
  
  private function addReleasesPages() {
    _pages.push({
      title: "archive",
      description: "Download older versions of HaxeDevelop",
      templatePath: "layout-page-download.mtt",
      contentPath: "download/archive.mtt",
      outputPath: "archive.html",
    }); 
    _pages.push({
      title: "Download - Latest version HaxeDevelop " + _currentRelease.version,
			description:  "HaxeDevelop " + _currentRelease.version + " is released " + _currentRelease.date,
      templatePath: "layout-page-download.mtt",
      contentPath: "download/download.mtt",
      outputPath: "download.html",
      customData: {release: _currentRelease}
    });
    for (release in _releases) {
      _pages.push({
        title: "Archive - Version " + release.version,
        description:  "HaxeDevelop " + _currentRelease.version + " is released " + _currentRelease.date,
        templatePath: "layout-page-download.mtt",
        contentPath: "download/version.mtt",
        outputPath: "haxedevelop-" + release.version + ".html",
        customData: {release: release}
      }); 
    }
  }
  
  private function getReleases() {
    _releases = Json.parse(File.getContent(contentPath + "releases/releases.json")).releases;
    for (release in _releases) {
      var releaseChanges = File.getContent(contentPath + "releases/" + release.version + "/changes.md");
      release.changes = Markdown.markdownToHtml(releaseChanges);
    }
    _currentRelease = _releases[0];
  }
  
  private inline function getPathToRelease(r:Release) {
    return 'releases/${r.version}/';
  }
  
  private function getBaseHref(page:Page) {
    if (page.outputPath == "404.html") {
      return basePath;
    }
    var href = [for (s in page.outputPath.split("/")) ".."];
    href[0] = ".";
    return href.join("/");
  }
  
  private function addGeneralPages() {
     _pages.push({
      title: "Build and debug cross platform applications using Haxe",
      description: "HaxeDevelop " + _currentRelease.version +" is free and available on Windows",
      templatePath: "layout-main.mtt",
      contentPath: "index.mtt",
      outputPath: "index.html",
    });
    
    _pages.push({
      title: "Build and debug cross platform applications using Haxe",
      description: "HaxeDevelop " + _currentRelease.version +" is free and available on Windows",
      templatePath: "layout-page-main.mtt",
      contentPath: "index.mtt",
      outputPath: "index.html",
    });
    
    _pages.push({
      title: "Features overview",
      description: "A guided tour through HaxeDevelop. HaxeDevelop aims to have the best code completion and contextual code generation for Haxe development.",
      templatePath: "layout-page.mtt",
      contentPath: "features.html",
      outputPath: "features.html",
    });
    
    _pages.push({
      title: "Page not found",
      description: null,
      templatePath: "layout-page-main.mtt",
      contentPath: "404.mtt",
      outputPath: "404.html",
    });
  }
  
  private function addDocumentationPages() {
    var documentationPath = "/documentation/";
    for (file in FileSystem.readDirectory(contentPath + documentationPath)) {
      if (!FileSystem.isDirectory(contentPath + documentationPath + file)) {
        _pages.push({
          title: getDocumentationTitle(documentationPath + file) + " - Documentation",
          description: getDescription(documentationPath + file),
          templatePath:"layout-page-sidebar.mtt",
          contentPath: documentationPath + file,
          outputPath: getWithoutExtension(file) + ".html",
        });
      }
    }
  }
  
  private function getDocumentationTitle(path:String) {
    return File.getContent(contentPath + path).split("\n").shift().split("# ").join("");
  }
	
  private function getDescription(path:String) {
		// TODO: make less hackish
		var lines = File.getContent(contentPath + path).split("\n");
		function trim(v:String):String return v.replace("#", "").replace(">", " ").replace("_", "").replace("*", "");
    return trim(lines[2]) + " "+ trim(lines[3]) +" "+ trim(lines[4]);
  }
	
  public inline function getAbsoluteUrl(page:Page) {
    return basePath + page.outputPath;
  }
  
  private static inline function getDirectoryPath(file:String) {
    var paths = file.split("/");
    paths.pop();
    return paths.join("/");
  }
  
  private static inline function getExtension(file:String) {
    return file.split(".").pop();
  }
  
  private static inline function getWithoutExtension(file:String) {
    var path = file.split(".");
    path.pop();
    return path.join(".");
  }
  
  private static function getContent(file:String, data) {
    return switch(getExtension(file)) {
      case "md": Markdown.markdownToHtml(File.getContent(file));
      case "mtt": Template.fromFile(file).execute(data);
      default: File.getContent(file);
    }
  }
  
  public function includeDirectory(dir:String, ?output:String) {
    if (output == null) output = outputPath;
    trace("include directory: " + output);
    for (file in FileSystem.readDirectory(dir)) {
      if (FileSystem.isDirectory(dir + "/" + file)) {
        FileSystem.createDirectory(output + "/" + file);
        includeDirectory(dir + "/" + file, output + "/" + file);
      } else {
        File.copy(dir + "/" + file, output + "/" + file);
      }
    }
  }
}

typedef Release = {
  version:String, 
  date:String, 
  changes:String, 
  links: {standalone:String, installer:String}
};

typedef Page = { 
  title:String,
  description:String,
  templatePath:String,
  contentPath: String,
  outputPath: String, 
  ?pageContent: String, 
  ?customData:Dynamic
};