(* Basic Oplot example with Graphics backend *)

open Oplot.Plt

let p = plot sin (-2.) 20.
let a = axis 0. 0.;;

display ~dev:x11 [ Color red; p; Color black; a ];;
quit ()
