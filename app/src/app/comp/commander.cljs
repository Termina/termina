
(ns app.comp.commander
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp mutation-> <> span div input button]]
            [keycode.core :as keycode]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-commander
 (states)
 (let [state (or (:data states) {:command "", :cwd ""})]
   (div
    {}
    (input
     {:value (:cwd state),
      :style (merge ui/input {:width 400}),
      :placeholder "Current working directy",
      :on-input (mutation-> (assoc state :cwd (:value %e)))})
    (=< 8 nil)
    (input
     {:value (:command state),
      :style (merge ui/input {:width 400}),
      :placeholder "Command",
      :on-input (mutation-> (assoc state :command (:value %e)))})
    (=< 8 nil)
    (button
     {:style ui/button,
      :on-click (fn [e d! m!]
        (println state)
        (d! :effect/run {:command (:command state), :cwd (:cwd state)}))}
     (<> "Run")))))
