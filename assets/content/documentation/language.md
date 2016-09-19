# Supported Languages
  
HaxeDevelop is a great coding environment since it supports many different code languages and provides syntax highlighting and other features: 


<a name="haxe"></a>

## Haxe

HaxeDevelop uses the Haxe completion service to make authoring Haxe easy as you would expect. 
In addition to syntactical features like formatting, class hierarchy and outlining, 
you also get language service features such as goto declaration, find all references 
and refactoring features (rename, move).

##### Create Haxe project
Top navigation: _Project > New Project > The Haxe project target_

##### Change project settings
Top navigation: _Project > Properties_

##### Change global settings
Top navigation: _Tools > Program settings > HaxeContext_

<a name="html"></a>
<a name="xml"></a>
<a name="php"></a>

## HTML / XML / PHP

When editing HTML/PHP files in HaxeDevelop you get HTML and XML syntax highlighting, 
but with some nice features. Smart indentation, auto-closing tags and 
even basic zen-coding if you feel adventurous. 

This takes the snippets idea to a whole new level: 
you can type CSS-like expressions that can be dynamically parsed, and produce output depending
on what you type in the abbreviation. 
Zen-coding is developed and optimised for web-developers whose workflow depends on HTML/XML/PHP.

##### Using zen-coding

Enter a CSS like abbreviation press _<i class="fa fa-keyboard-o"></i> CTRL-B_

```
html>head+body>header+section#container+footer
```

This code is generated

    <html>
      <head></head>
      <body>
        <header></header>
        <section id="container"></section>
        <footer></footer>
      </body>
    </html>

> <a href="http://docs.emmet.io/abbreviations/syntax/">Learn about the zen-coding syntax</a>.

##### Change global HTML/XML settings

Top navigation: _Tools > Program settings > XML Completion_

##### Change global PHP settings

Top navigation: _Tools > Program settings > PHPContext_

<a name="css"></a>

## CSS / Less / Sass  / HSS

HaxeDevelop maximizes the web developer workflow with
built-in support for editing style sheets in 
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS">CSS</a> (.css), 
<a href="http://sass-lang.com/">Sass</a> (.scss), 
<a href="http://lesscss.org/">Less</a> (.less) and 
<a href="https://github.com/ncannasse/hss">Hss</a> (.hss).
Of course it has syntax coloring and basic auto-completion.
It also comes with a minifier to deliver small css files.


##### Change global settings

Top navigation: _Tools > Program settings > CSS Completion_

<a name="batch"></a>

## Batch / Properties

HaxeDevelop likes settings files (.ini) and batch (.cmd, .bat) files. 
It has nice syntax coloring to separate sections and uses content based completion.

##### Enable syntax coloring

Top navigation: _Syntax > Batch_,_ Properties _or_ Text_

<a name="js"></a>
<a name="json"></a>
<a name="typescript"></a>

## JSON / JavaScript / TypeScript

HaxeDevelop has basic support for editing 
<a href="https://developer.mozilla.org/en/docs/Web/JavaScript">JavaScript</a> (.js), 
<a href="https://developer.mozilla.org/en-US/docs/Glossary/JSON">JSON</a> (.json) and 
<a href="http://www.typescriptlang.org/">TypeScript</a> (.ts) files.
It has of course syntax highlighting but also invokes the TypeScript compiler (tsc).
It uses the content based completion.

##### Enable syntax coloring

Top navigation: _Syntax > Batch_,_ Properties _or_ Text_

<a name="actionscript"></a>

## ActionScript

Since HaxeDevelop is a custom distribution of FlashDevelop, you can profit
from the excellent features of the build-in ActionScript coding environment. 
Most features of Haxe projects are also available for ActionScript projects.

##### Create ActionScript project

Top navigation: _Project > New Project > The ActionScript project target_

##### Change project settings

Top navigation: _Project > Properties_

##### Change global settings

Top navigation: _Tools > Program settings > AS3Context_ or _AS2Context_
