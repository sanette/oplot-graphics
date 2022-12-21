(lang dune 2.7)
(version "0.1")
(name oplot-graphics)
(generate_opam_files true)
(license ISC)
(authors "Vu Ngoc San <san.vu-ngoc@laposte.net>")
;(source (github sanette/oplot-graphics))

(package
 (name oplot-graphics)
 (synopsis "Oplot Plugin for using the Graphics backend")
 (description
   "oplot-graphics enables the use of the Graphics backend for oplot")
  (tags ("plot" "2D" "3D" "math"))
 (depends
  (oplot (>= 0.6.9))))
