
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp cursor-> action-> list-> button <> span div]]
            [app.comp.commander :refer [comp-commander]]
            [app.comp.process :refer [comp-process]]))

(defcomp
 comp-home
 (store states)
 (div
  {}
  (div {} (cursor-> :commander comp-commander states))
  (div {} (button {:style ui/button, :on-click (action-> :process/clear nil)} (<> "clear")))
  (list->
   {}
   (->> (:processes store) (map (fn [[pid process]] [pid (comp-process process)]))))))
