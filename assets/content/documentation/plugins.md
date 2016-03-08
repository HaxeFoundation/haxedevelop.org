# Plugins
_Tools > User config files > plugins _

### Creating own plugins

Plugins are .NET DLLs, which means that they should be developed in a .NET language, such as C#. You will need HaxeDevelop installed in order to compile and test plugins.
Looking at existing plugins source is a great source for learning the application architecture.

Once your plugin is built, pick the _.dll_ and copy it to HaxeDevelop's _Plugins_ folder (_HaxeDevelop > Tools > User Config Files_). Open or restart HaxeDevelop.

 * [Plugin development](http://www.flashdevelop.org/wikidocs/index.php?title=Plugin_Development)
 * [Sample Plugin code](https://github.com/fdorg/flashdevelop/tree/development/External/Plugins/SamplePlugin)

##### Creating plugins with Haxe/C# 

With Haxe you can compile to C#, thus you can write plugins with Haxe. 

* [Download the plugin as project template](https://github.com/skial/FD_PluginTemplate)
* [Download the Haxe/C# sample plugin](https://github.com/skial/FD_SamplePlugin)

### More info on FlashDevelop.org

 * [3rd Party Plugins](http://www.flashdevelop.org/wikidocs/index.php?title=3rd_Party_Plugins_FD4)
 * [FlashDevelop Plugins forum](http://www.flashdevelop.org/community/viewforum.php?f=4)