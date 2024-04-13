<br/>
<p align="center">
  <a href="https://github.com/svan9/cuba">
    <img src="https://raw.githubusercontent.com/svan9/cuba-language/master/images/icon.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">CUBA</h3>

  <p align="center">
    CUBA LANGUAGE IS JUST FOR ALIVE
    <br/>
    <br/>
    <a href="https://github.com/svan9/cuba">View Demo</a>
    .
    <a href="https://github.com/svan9/cuba/issues">Report Bug</a>
    .
    <a href="https://github.com/svan9/cuba/issues">Request Feature</a>
  </p>
</p>

![Downloads](https://img.shields.io/github/downloads/svan9/cuba/total) ![Contributors](https://img.shields.io/github/contributors/svan9/cuba?color=dark-green) ![Issues](https://img.shields.io/github/issues/svan9/cuba) ![License](https://img.shields.io/github/license/svan9/cuba)

## Usage

```html
> cuba "<path-to-cbo-file>"
```
```js
> cuba.exe "<path-to-cbo-file>"
```
```js
> cuba "somefile.cbo"
```

_ps:_

_'**.cb**' file is not supported_

_'**.cbo**' file is supported only for _doctype_: '**cuba_object**'_


## Syntax

For example functions defined like: 

```js
tom add               // add 2 numbers
  type  iew           // return type
  argc  2             // argument count
  cast  [ 0, 0 ]      // cast arg to type (not implemented)
  arg   [ iew, iew ]  // argument types
  name  [ i1, i2 ]    // argument name
begin                 // start of function inner 
  push i1             // push arg 'i1' to stack
  push i2             // push arg 'i2' to stack
  int add             // use integer operation 'add' for 2 last number int stack 
  ret lst             // return last element of stack
  pop 3               // free pushed elements
end                   // end of function inner
```

<!-- ><span style="color: #993333; font-weight: bold; font-style: italic">!!! WARN !!! int function head statement used only order like [type, argc, cast, arg, name]</span> -->

### In begin-end statement
```html
push  <arg>   // push element into stack
pop   <count> // remove elements of stack by last
int   <type>  // type is 'add | mult | div | sub'
call  <name>  // call some function use stack as args
ret   <value> // return value (push after complete to stack)

var   <name>        // declare template variable
mov   <from> <to>   // put 'from' to 'to'

```


<!-- ### In global @depricated
```js
call print        // call funtion
  argc  1         // declare arg count
  arg   [ iew ]   // declare arg type
  val   [ lst ]   // lst use last in stack
end
// ps. it's print fn
``` -->
____

<div style="text-align: center; font-style: italic;"><a href="https://github.com/svan9/">svan9</a> in 2024©️ v1.0.0.01</div>
