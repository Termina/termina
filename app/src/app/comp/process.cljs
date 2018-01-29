
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp list-> <> span div]]))

(defcomp
 comp-process
 (process)
 (div
  {:style {:padding 16,
           :background-color (if (:alive? process) (hsl 120 80 97) (hsl 240 50 95)),
           :margin 8}}
  (div
   {}
   (<> (:pid process))
   (=< 8 nil)
   (<> (:command process))
   (=< 9 nil)
   (<> (:started-at process))
   (=< 8 nil)
   (<> (:alive? process)))
  (list->
   {:style {:font-family ui/font-code,
            :white-space :pre,
            :font-size 12,
            :line-height "1.5em"}}
   (->> (:content process) (map-indexed (fn [idx chunk] [idx (<> (:data chunk))]))))))
