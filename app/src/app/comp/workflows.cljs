
(ns app.comp.workflows
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> action-> mutation-> list-> span div input]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]
            [keycode.core :as keycode]))

(defcomp
 comp-workflows
 (states workflows)
 (let [state (or (:data states) {:name "", :focused-id nil})]
   (div
    {:style (merge ui/row {:padding 16})}
    (div
     {:style {:width 240}}
     (div
      {}
      (input
       {:style (merge ui/input {:width 240}),
        :placeholder "Workflow name",
        :value (:name state),
        :on-input (mutation-> (assoc state :name (:value %e))),
        :on-keydown (fn [e d! m!]
          (if (and (not (string/blank? (:name state))) (= keycode/return (:keycode e)))
            (do (d! :workflow/create (:name state)) (m! (assoc state :name "")))))}))
     (list->
      {}
      (->> workflows
           (map
            (fn [[k workflow]]
              [k
               (div
                {:style {:cursor :pointer},
                 :on-click (mutation-> (assoc state :focused-id k))}
                (<> (:name workflow)))])))))
    (=< 16 nil)
    (div
     {:style ui/flex}
     (let [focused-id (:focused-id state)]
       (if (and (some? focused-id) (some? (get workflows focused-id)))
         (let [workflow (get workflows focused-id)] (div {} (<> (:name workflow))))
         (div {} (<> "nothing"))))))))
