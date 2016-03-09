# Extensions

> HaxeDevelop extensions are regular *.zip archive files using *.fdz file extension. 

HaxeDevelop extracts the contents of the archives using additional builtin arguments to extract the contents to the desired locations. You can create these extensions with normal ZIP archive tools. You just need to change the file extension to *.fdz when done.

### Usage

See <a href="arguments.html">arguments</a> for a full list of supported arguments.
HaxeDevelop checks if any of the files being installed is an update to an already existing and possible locked (by HaxeDevelop) binary file (_*.fdl, *.fdb_ or _*.dll_) and if so, will request the user to restart HaxeDevelop to update these files.

Syntax coloring extensions should use a word "theme" (in any case) in the filename to tell HaxeDevelop to reload and refresh the code editor coloring configuration when the extension has been installed. Also the syntax coloring is now fully dynamic and no other _*.xml_ files (like backups) should be in the Languages directory as they may override the other defined language and syntax coloring settings.

### More extensions

 * [Themes](themes.html)
 * [Plugins](plugins.html)
 * [Snippets](snippets.html)
 * [Macro scripts](macros.html)
 * [Custom arguments and variables](arguments.html)
