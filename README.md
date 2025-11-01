# oplot-graphics, a Graphics backend for Oplot

[Oplot](https://github.com/sanette/oplot) is an
[OCaml](https://ocaml.org/) library for mathematical plotting using
OpenGL graphics.

`oplot-graphics` is a plugin for extending Oplot. It will enable the
use of the X11 graphics library (unix) or the Win32 API (Windows)
through the [Graphics](https://github.com/ocaml/graphics) ocaml
library.

## WIP

Currently `oplot-graphics` is not that useful because only a subset of
Oplot is implemented. Moreover the output quality of the Graphics
library is debatable. The original Oplot library should be better for
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

and then use Oplot as usual. The `graphics` device must be explicitly
selected, for instance:

```ocaml
module Oplot = Oplot_graphics
open Oplot.Plt

let p = plot sin (-2.) 20.
let a = axis 0. 0.;;

display ~dev:graphics [ Color red; p; Color black; a ];;
```

See the `test` directory.

`oplot-graphics` can also be used from the toplevel. After starting
the toplevel (`ocaml` or `utop`), just load the library with

```ocaml
#use "topfind";;
#thread;;
#require "oplot-graphics";;
```

You may then copy/paste the example above.
