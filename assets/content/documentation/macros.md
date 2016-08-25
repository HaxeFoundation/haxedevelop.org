# Macro scripts

_Macros are one-file C# files which can be executed within for HaxeDevelop. _

## Usage

Here is a macro which "flattens" single line XML code in the current document.

```
// FlattenXML.cs
using System;
using PluginCore;

public class FlattenXML
{
   public static void Execute()
   {
      ScintillaNet.ScintillaControl sci = PluginBase.MainForm.CurrentDocument.SciControl;
      if (sci == null) return; // document not editable

      string src = sci.Text; // WARNING: reading/writing sci.Text property is slow
      sci.Text = src.Replace("><", ">\n<");
   }
}
```

#### Save the script
We recommend to save this as _.cs_ file in your user directory (from HaxeDevelop main menu: _Tools > User Config Files_) which corresponds to the `$(BaseDir)` [variable](arguments.html), but it can really be anywhere.

<img src="img/haxedevelop-macros.png" />

#### Add the script

The macro properties are pretty straightforward:
  
* **AutoRun** - Optionally execute macro on startup
* **Entries** - List of basic macro commands (click `<...>` to edit)
* **Image** - [Pick an icon number](icons.html)
* **Label** - Text of the menu item
* **Shortcut** - Obviously a shortcut to execute your macro

#### Test the script

For quick testing you can simply select your _.cs_ file manually from main menu: _Macros > Run Script_.

During development, use this action to make sure the script is reloaded/recompiled every time:

```
ExecuteScript|Development;$(BaseDir)\FlattenXML.cs
```

When your script is completed, you want to make sure the script is only compiled once:

```
ExecuteScript|Internal;$(BaseDir)\FlattenXML.cs
```

> Note: Please don't confuse macro scripts with the [Haxe Macros](http://haxe.org/manual/macro.html), this is something different.

## Snippets editor

<a href="http://www.sliver.com/dotnet/SnippetCompiler/"><img src="http://www.sliver.com/dotnet/SnippetCompiler/SnippetCompiler3.PNG" width="50%" align="right"/></a>

#### The Snippet Compiler Live 2008 Ultimate Edition for Developers!

This is free, lightweight C# editor offering actually good code completion and compilation - precisely designed to quickly code and compile one class (typically to create a little command line application).

So download [Snippet Compiler](http://www.sliver.com/dotnet/SnippetCompiler/) (SC) and run it. You'll be presented with a default C# class for a command line application. 

The template class has 2 methods: RunSnippet and Main. This is a nice way to let you write your code in RunSnippet and to not worry about the usual try/catch and ReadKey when you test a command-line application.

#### For HaxeDevelop macro scripts:
  
 - Compile your script using SC to trap compile errors.
 - this means a `public static void Main()` method is required, SC compiles command line application only
 - Keep the default class as-is. Use `RunSnippet()` for your tests outside HaxeDevelop.

<ol>
  <li>For most code completion needs you'll have to add a "reference" to FlashDevelop's PluginCore:
  <ul>
    <li>In SC, select: <em>Tools > References > File System</em>
    <li>Choose <code>&lt;...&gt;</code> to browse to HD program files and choose PluginCore.dll. Double-click once to add it in the DLL list at the bottom of the dialog, then click <em>Ok</em>. You may have to re-add the reference when you restart SC.
  </ul>
  <li>You will then simply add a <code>public static void Execute()</code> method with your FD script.
  <li>Code, compile with <i class="fa fa-keyboard-o"></i> <em>Ctrl+Shift+B</em> to control your code is ok, then test in HaxeDevelop.
</ol>