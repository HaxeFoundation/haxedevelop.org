# Code generation

<em><strong><i class="fa fa-keyboard-o"></i> <em>Ctrl+Shift+1</em></strong>: The shortcut for code generation</em>

### Generate fields from function parameters
Place your cursor on a function parameter name and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to generate Class members corresponding to the function parameters.
  
<img src="img/haxedevelop-parameters.gif" alt="Generating fields from function parameters" />

### Import declaration generation
If a class in your code is not imported (and if it is correctly written), move your cursor on the class name and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to generate the missing import.

<img src="img/haxedevelop-imports.gif" alt="Automatic imports" />

### Method override generation
In Haxe, type 'override'-space and select a method in the list: 
The method signature and body will be generated (including super call). 
Notice that the required imports will automatically be added to your code.
  
<img src="img/haxedevelop-override.gif" alt="Method override generation" />

### Event handlers generation
Write an addEventListener call (for example in NME/OpenFL), move your cursor on the (missing) handler's name and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to generate the event handler.

<code>addEventListener(type, Ctrl+Shift+1</code>  

FlashDevelop can completely generate the event handler name.

<img src="img/haxedevelop-events.gif" alt="Event handlers generation" />

### Getter/setter generation
Move your cursor on a variable and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to generate the appropriate getter/setter.

<img src="img/haxedevelop-gettersetter.gif" alt="Getter/setter generation" />


### Local variables promotion
Move your cursor on a local variable inside a function and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to declare this variable as a class member or as a parameter of the current function. 
FlashDevelop will also offer to "move the variable(s) declaration" at the beginning of the function body. 
It can also declare new elements in other classes. 
Function generation will take automatically detect the parameters types. 

<img src="img/haxedevelop-unknown-members.gif" alt="Unknown member generation" />

### Snippets
[Code snippets](snippets.html) are chunks of code that you often need to insert in your code. 
Press <i class="fa fa-keyboard-o"></i> _Ctrl+B_ to expand a code snippet or view the snippets list. 
Snippets can be smarter by using contextual "variables". 
FlashDevelop includes a Snippets editor (puzzle button in the toolbar). 

<img src="img/haxedevelop-snippets.gif" alt="Snippets in HaxeDevelop" />

### Zen Coding / Emmet abbreviations

Write CSS-like snippets, press <i class="fa fa-keyboard-o"></i> _Ctrl+B_

<img src="img/haxedevelop-emmet-abbreviations.gif" alt="Emmet abbreviations in HaxeDevelop" />


### Interface methods implementation
Move your cursor on an interface type and press <i class="fa fa-keyboard-o"></i> _Ctrl+Shift+1_ to generate the required interface methods.
Notice that the required imports will automatically be added to your code.

