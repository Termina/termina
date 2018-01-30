
(ns app.comp.dialog
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> action-> span div]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-dialog
 (on-close! child-node)
 (div
  {:style (merge
           ui/fullscreen
           ui/center
           {:position :absolute,
            :width "100%",
            :height "100%",
            :background-color (hsl 0 0 0 0.4),
            :z-index 100}),
   :on-click (fn [e d! m!] (on-close! m!))}
  (div
   {:style {:padding 16, :background-color :white}, :on-click (fn [e d! m!] )}
   child-node)))
