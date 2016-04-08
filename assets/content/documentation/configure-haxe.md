# Configure Haxe

### Set Haxe SDK versions

_Tools > Program Settings > HaxeContext > Installed Haxe SDKs_

If you use multiple Haxe versions you can list all compiler versions here.

<img src="img/configure-haxe-sdk.jpg" alt="Configure Haxe SDK"/>

> Download specific Haxe versions here <http://haxe.org/download/list/>
  
### Specific Haxe version per project

_Project > Properties > SDK_

You can define a specific Haxe SDK for a project. This used version is saved in the project file (.hxproj). 

<img src="img/configure-haxe-project.jpg" alt="Set Haxe SDK in HaxeDevelop project"/>

### Configure Haxe libraries 

_Project > Properties > Compiler Options > Libraries_

Define the list of haxelibs here. Use a new line for every library:
  
<img src="img/haxedevelop-haxelibs.JPG" alt="HaxeDevelop configure Haxelibs"/>

The used libraries will be shown as _References_ in the Project Panel:
  
<img src="img/haxedevelop-references.JPG" alt="HaxeDevelop Haxe library references in Project Panel"/>

> Download more than 1000 free Haxelibs on <http://lib.haxe.org>

### Set Haxe compiler defines

<img src="img/haxedevelop-defines.JPG" alt="Configure Haxe Defines in HaxeDevelop"/>

> Read more about [conditional compilation](http://haxe.org/manual/lf-condition-compilation.html) and [compiler usage](http://haxe.org/manual/compiler-usage.html).
  
### Configure completion  

_Tools > Program Settings > HaxeContext > Completion modes_

The most complete completion will be provided by the Haxe Compiler and faster using the CompletionServer. 
Alternatively FlashDevelop includes basic support for Haxe completion.