# Arguments / Variables

Arguments are dynamic variables that can be used in templates, snippets, commands, menus and macros. These are processed on runtime and some of them require user interaction. There are also predefined arguments for the build process and these you can view in the project's setting dialog using the command builder dialog under the Build tab.

_Here is a list of currently available default arguments:_

### Editor

| Variable | Description |
|  |  |
| `$(EntryPoint)` | Selection's start position |
| `$(ExitPoint)` | Selection's end position |
| `$(Boundary)` | Keep all text between boundaries |
| `$(CSLB)` | Coding style line break (to optionally insert a line break before { characters) |
| `$(CBI)` | Comment block indentation style (to optionally insert a space before * in bloc comments) |
| `$(STC)` | Space or tab character based on the setting Use Tabs. |
| `$(SelText)` | Selected text |
| `$(CurWord)` | Word at cursor position |
| `$(CurSyntax)` | Currently active syntax |
| `$(Clipboard)` | Clipboard content |

### Filesystem

| Variable | Description |
|  |  |
| `$(CurFile)` | Current file |
| `$(CurFilename)` | Current file's name |
| `$(CurDir)` | Current file's directory |
| `$(DesktopDir)` | User's desktop directory |
| `$(SystemDir)` | Windows system directory |
| `$(ProgramsDir)` | Program Files directory |
| `$(PersonalDir)` | User's personal files directory |
| `$(WorkingDir)` | Current working directory |
| `$(AppDir)` | FlashDevelop program directory |
| `$(BaseDir)` | FlashDevelop files directory |
| `$(UserAppDir)` | FlashDevelop user directory |
| `$(ToolsDir)` | FlashDevelop Tools directory |

  
### Prompt

| Variable | Description |
|  |  |
| `$(OpenFile)` | Asks for a file open with a dialog |
| `$(SaveFile)` | Asks for a file save with a dialog |
| `$(OpenDir)` | Asks for a directory with a dialog |

  
### Project

| Variable | Description |
|  |  |
| `$(FDBuild)` | path to FlashDevelop command line build tool |
| `$(OutputFile)` | project's Output file path (i.e. C:\path\to\MyProject\bin\MyProject.ext) |
| `$(OutputDir)` | project's Output directory (i.e. C:\path\to\MyProject\bin) |
| `$(OutputName)` | project's Output file name (i.e. MyProject.ext) |
| `$(ProjectName)` | project's name (i.e. MyProject) |
| `$(ProjectDir)` | project's Output directory (i.e. C:\path\to\MyProject) |
| `$(ProjectPath)` | project's Output directory (i.e. C:\path\to\MyProject\MyProject.fdproj) |
| `$(BuildConfig)` | project's target configuration (i.e. release or debug) |
| `$(TargetPlatform)` | project's target platform (i.e. Haxe/JavaScript/etc.) |
| `$(TargetVersion)` | project's platform target version (i.e. 11.1 for Flash target) |
| `$(TargetBuild)` | project's target build name (value entered in the second drop-down right to configuration) |
| `$(CompilerPath)` | path to the project's selected compiler SDK |
  
### Code model

| Variable | Description |
|  |  |
| `$(TypPkg)` | File package |
| `$(TypName)` | Current type name |
| `$(TypPkgName)` | Current package + type name |
| `$(TypKind)` | Type kind (interface, class) |
| `$(TypClosestListName)` | Closest Array or Vector var name |
| `$(TypClosestListItemType)` | Closest Vector item type |
| `$(MbrName)` | Current member, i.e. current method |
| `$(MbrKind)` | Member kind (const, var, function) |
| `$(MbrTypPkg)` | Member's type package |
| `$(MbrTypName)` | Members's type name |
| `$(MbrTypePkgName)` | Members's type qualified name |
| `$(MbrTypKind)` | Members's type kind (interface, class) |
| `$(ItmTypName)` | Current item name at cursor position |
| `$(ItmFile)` | File where the item is declared |
| `$(ItmKind)` | Item kind (const, var, function) |
| `$(ItmTypPkg)` | Item's type package |
| `$(ItmTypName)` | Item's type name |
| `$(ItmTypePkgName)` | Item's type qualified name |
| `$(ItmTypKind)` | Item's type kind (interface, class) |
| `$(ItmUniqueVar)` | Unique variable name (i, j... etc) |

### Custom arguments

| Variable | Description | Image | 
|  |  |  |
| `$$(myValue)` | Custom variable | ![custom arguments](img/custom-argument-1.png) |
| `$$(myValue=defaultValue)` | Custom variable with default value | ![custom arguments](img/custom-argument-2.png) |
| `$$(myValue=1,2,3)` | Custom variable with multiple values | ![custom arguments](img/custom-argument-3.png) |

