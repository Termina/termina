
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> span div]]))

(defcomp
 comp-process
 (process)
 (div
  {}
  (div
   {}
   (<> (:pid process))
   (=< 8 nil)
   (<> (:command process))
   (=< 9 nil)
   (<> (:started-at process))
   (=< 8 nil)
   (<> (:alive? process)))
  (div {} (<> (:content process)))))
