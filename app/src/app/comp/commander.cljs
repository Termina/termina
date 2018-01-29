
(ns app.comp.commander
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> span div input]]
            [keycode.core :as keycode]))

(defcomp
 comp-commander
 (states)
 (let [state (or (:data states) {:text ""})]
   (div
    {}
    (input
     {:value (:text state),
      :style (merge ui/input {:width 400}),
      :placeholder "Command",
      :on-input (fn [e d! m!] (m! (assoc state :text (:value e)))),
      :on-keydown (fn [e d! m!]
        (if (= keycode/return (:keycode e))
          (do
           (d!
            :effect/run
            {:command (:text state), :cwd "/Users/chen/repo/mvc-works/termina"})
           (m! (assoc state :text "")))))}))))
