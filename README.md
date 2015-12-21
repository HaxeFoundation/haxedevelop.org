# haxedevelop.org
[![Build Status](https://travis-ci.org/markknol/haxedevelop.org.svg?branch=master)](https://travis-ci.org/markknol/haxedevelop.org)

> Sources for [haxedevelop.org](http://haxedevelop.org)

_This website is under construction_

This project contains a static website generator, it is mixing templates and markdown files into plain HTML files.

### Structure

 * The template files are in `assets/content/`.
 * The static files (css, js, images) files are in `assets/includes/`.
 * The Haxe source files of the generator are in `src/`
 * The website-generated content will output in `output/`

### Running a local copy

To run the project you need [Haxe](http://haxe.org).

Call `run.bat` to re-generate the output files.

### Contributing to the generator

The generator depends on hxtemplo and markdown. Install from haxelib:
```
haxelib install hxtemplo
haxelib install markdown
```
