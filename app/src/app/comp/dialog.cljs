
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
  {:style (merge ui/fullscreen), :on-click (fn [e d! m!] (on-close! m!))}
  (div {:on-click (fn [e d! m!] )} child-node)))
