# Custom arguments
Arguments are dynamic variables that can be used in templates, snippets, commands, menus and macros. These are processed on runtime and some of them require user interaction. There are also predefined arguments for the build process and these you can view in the project's setting dialog using the command builder dialog under the Build tab.

Here is a list of currently available default arguments:

### Editor

<dl>
  <dt>$(EntryPoint)</dt><dd>Selection's start position</dd>
  <dt>$(ExitPoint)</dt><dd>Selection's end position</dd>
  <dt>$(Boundary)</dt><dd>Keep all text between boundaries</dd>
  <dt>$(CSLB)</dt><dd>Coding style line break (to optionally insert a line break before { characters)</dd>
  <dt>$(CBI)</dt><dd>Comment block indentation style (to optionally insert a space before * in bloc comments)</dd>
  <dt>$(STC)</dt><dd>Space or tab character based on the setting Use Tabs.</dd>
  <dt>$(SelText)</dt><dd>Selected text</dd>
  <dt>$(CurWord)</dt><dd>Word at cursor position</dd>
  <dt>$(CurSyntax)</dt><dd>Currently active syntax</dd>
  <dt>$(Clipboard)</dt><dd>Clipboard content</dd>
</dl>

### Filesystem

<dl>
  <dt>$(CurFile)</dt><dd>Current file</dd>
  <dt>$(CurFilename)</dt><dd>Current file's name</dd>
  <dt>$(CurDir)</dt><dd>Current file's directory</dd>
  <dt>$(DesktopDir)</dt><dd>User's desktop directory</dd>
  <dt>$(SystemDir)</dt><dd>Windows system directory</dd>
  <dt>$(ProgramsDir)</dt><dd>Program Files directory</dd>
  <dt>$(PersonalDir)</dt><dd>User's personal files directory</dd>
  <dt>$(WorkingDir)</dt><dd>Current working directory</dd>
  <dt>$(AppDir)</dt><dd>FlashDevelop program directory</dd>
  <dt>$(BaseDir)</dt><dd>FlashDevelop files directory</dd>
  <dt>$(UserAppDir)</dt><dd>FlashDevelop user directory</dd>
  <dt>$(ToolsDir)</dt><dd>FlashDevelop Tools directory</dd>
</dl>
  
### Prompt

<dl>
  <dt>$(OpenFile)</dt><dd>Asks for a file open with a dialog</dd>
  <dt>$(SaveFile)</dt><dd>Asks for a file save with a dialog</dd>
  <dt>$(OpenDir)</dt><dd>Asks for a directory with a dialog</dd>
</dl>
  
### Project

<dl>
  <dt>$(FDBuild)</dt><dd>path to FlashDevelop command line build tool</dd>
  <dt>$(OutputFile)</dt><dd>project's Output file path (ie. C:\path\to\MyProject\bin\MyProject.ext)</dd>
  <dt>$(OutputDir)</dt><dd>project's Output directory (ie. C:\path\to\MyProject\bin)</dd>
  <dt>$(OutputName)</dt><dd>project's Output file name (ie. MyProject.ext)</dd>
  <dt>$(ProjectName)</dt><dd>project's name (ie. MyProject)</dd>
  <dt>$(ProjectDir)</dt><dd>project's Output directory (ie. C:\path\to\MyProject)</dd>
  <dt>$(ProjectPath)</dt><dd>project's Output directory (ie. C:\path\to\MyProject\MyProject.fdproj)</dd>
  <dt>$(BuildConfig)</dt><dd>project's target configuration (ie. release or debug)</dd>
  <dt>$(TargetPlatform)</dt><dd>project's target platform (ie. Haxe/JavaScript/etc.)</dd>
  <dt>$(TargetVersion)</dt><dd>project's platform target version (ie. 11.1 for Flash target)</dd>
  <dt>$(TargetBuild)</dt><dd>project's target build name (value entered in the second drop-down right to configuration)</dd>
  <dt>$(CompilerPath)</dt><dd>path to the project's selected compiler SDK</dd>
</dl>
  
### Code model

<dl>
  <dt>$(TypPkg)</dt><dd>File package</dd>
  <dt>$(TypName)</dt><dd>Current type name</dd>
  <dt>$(TypPkgName)</dt><dd>Current package + type name</dd>
  <dt>$(TypKind)</dt><dd>Type kind (interface, class)</dd>
  <dt>$(TypClosestListName)</dt><dd>Closest Array or Vector var name</dd>
  <dt>$(TypClosestListItemType)</dt><dd>Closest Vector item type</dd>
  <dt>$(MbrName)</dt><dd>Current member, ie. current method</dd>
  <dt>$(MbrKind)</dt><dd>Member kind (const, var, function)</dd>
  <dt>$(MbrTypPkg)</dt><dd>Member's type package</dd>
  <dt>$(MbrTypName)</dt><dd>Members's type name</dd>
  <dt>$(MbrTypePkgName)</dt><dd>Members's type qualified name</dd>
  <dt>$(MbrTypKind)</dt><dd>Members's type kind (interface, class)</dd>
  <dt>$(ItmTypName)</dt><dd>Current item name at cursor position</dd>
  <dt>$(ItmFile)</dt><dd>File where the item is declared</dd>
  <dt>$(ItmKind)</dt><dd>Item kind (const, var, function)</dd>
  <dt>$(ItmTypPkg)</dt><dd>Item's type package</dd>
  <dt>$(ItmTypName)</dt><dd>Item's type name</dd>
  <dt>$(ItmTypePkgName)</dt><dd>Item's type qualified name</dd>
  <dt>$(ItmTypKind)</dt><dd>Item's type kind (interface, class)</dd>
  <dt>$(ItmUniqueVar)</dt><dd>Unique variable name (i, j... etc)</dd>
</dl>