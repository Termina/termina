
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp cursor-> action-> list-> button <> span div]]
            [app.comp.commander :refer [comp-commander]]
            [app.comp.process :refer [comp-process]]))

(defcomp
 comp-home
 (store states)
 (div
  {}
  (div
   {:style ui/row-parted}
   (cursor-> :commander comp-commander states)
   (div
    {}
    (button {:style ui/button, :on-click (action-> :process/clear nil)} (<> "Clear All"))))
  (=< nil 8)
  (list->
   {}
   (->> (:processes store)
        (sort (fn [x y] (- (:started-at (val y)) (:started-at (val x)))))
        (map (fn [[pid process]] [pid (comp-process process)]))))))
