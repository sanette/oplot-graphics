# oplot-graphics, a Graphics backend for Oplot

[Oplot](https://github.com/sanette/oplot) is a library for mathematical plotting using OpenGL graphics.

`oplot-graphics` is a plugin for extending Oplot. It will enable the
use of the X11 graphics library through the [Graphics]() ocaml
library.

## WIP

Currently `oplot-graphics` is not that useful because only a subset of
Oplot is implemented.  The original Oplot library should be better for
most users.

## Usage

Install the library:
```
opam pin https://github.com/sanette/oplot-graphics.git
```

Then in `ocaml` files just use the alias

```ocaml
module Oplot = Oplot_graphics

```

and then use Oplot as usual. The `x11` device must be explicitly
selected, for instance:

```ocaml
module Oplot = Oplot_graphics
open Oplot.Plt

let p = plot sin (-2.) 20.
let a = axis 0. 0.;;

display ~dev:x11 [ Color red; p; Color black; a ];;
```
