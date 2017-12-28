package;
/**
 * @author Mark Knol
 */
class Main{

  public static function main() {
    var generator = new Generator();
    generator.basePath = "https://haxedevelop.org/";
    generator.outputPath = "output/";
    generator.contentPath = "assets/content/";
    
    generator.build(true);
    generator.includeDirectory("assets/includes");
  }
}
