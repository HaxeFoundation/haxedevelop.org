# haxedevelop.org
[![Build Status](https://travis-ci.org/HaxeFoundation/haxedevelop.org.svg?branch=master)](https://travis-ci.org/HaxeFoundation/haxedevelop.org)

> Sources for [haxedevelop.org](https://haxedevelop.org)

This project contains a static website generator, it is mixing templates and markdown files into plain HTML files.

### Structure

 * The template files are in `assets/content/`.
 * The static files (css, js, images) files are in `assets/includes/`.
 * The Haxe source files of the generator are in `src/`
 * The website-generated content will output in `output/`

### Running a local copy

To run the project you need [Haxe](https://haxe.org).

Call `build-site.bat` to re-generate the output files.

### Contributing to the website/content

Please edit the website files, template and markdown in the [assets folder](https://github.com/markknol/haxedevelop.org/tree/master/assets) and do a pull request.

### Contributing to the generator

You need [Haxe](https://haxe.org) 3.2+ installed.

The static site generator source depends on [hxtemplo](https://lib.haxe.org/p/hxtemplo) and [markdown](https://lib.haxe.org/p/markdown). Install from haxelib:
```
haxelib install hxtemplo
haxelib install markdown
```

### Publish new HaxeDevelop binaries on the website

1. Add binaries here https://github.com/HaxeFoundation/haxedevelop.org/releases
1. Create `$version/CHANGES.md` file here https://github.com/HaxeFoundation/haxedevelop.org/tree/master/assets/content/releases
1. Register version + binaries here https://github.com/HaxeFoundation/haxedevelop.org/blob/master/assets/content/releases/releases.json
1. Update `latest.txt` https://github.com/HaxeFoundation/haxedevelop.org/blob/master/assets/includes/latest.txt
1. Done. Travis will build the site and put it online automatically.
