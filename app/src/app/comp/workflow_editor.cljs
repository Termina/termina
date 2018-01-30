
(ns app.comp.workflow-editor
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> mutation-> action-> span div]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-workflow-editor
 ()
 (div
  {}
  (input
   {:style (merge ui/input {:width 240}),
    :placeholder "Workflow name",
    :value (:name state),
    :on-input (mutation-> (assoc state :name (:value %e))),
    :on-keydown (fn [e d! m!]
      (if (and (not (string/blank? (:name state))) (= keycode/return (:keycode e)))
        (do (d! :workflow/create (:name state)) (m! (assoc state :name "")))))})))
