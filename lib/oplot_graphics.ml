(* Oplot-graphics *)
(* San Vu Ngoc 2022 *)

module Points = Oplot.Points

module Common = Oplot.Common

module Main = Oplot.Make (Graphics)

module Plt = struct
  include Common
  include Main
  module Internal = Main
end
