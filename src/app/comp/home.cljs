
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core
             :refer
             [defcomp cursor-> action-> list-> button <> span div a input]]
            [app.comp.process :refer [comp-process]]
            [app.util :refer [join-path map-val]]
            [app.style :as style]
            [app.comp.command :refer [comp-command-button comp-command-editor]]
            [inflow-popup.comp.popup :refer [comp-popup]]
            [fuzzy-filter.core :refer [parse-by-letter]]
            [clojure.string :as string]))

(def style-filter
  {:min-width 60,
   :width 60,
   :background-color :transparent,
   :color (hsl 0 0 100 0.8),
   :border-width "0 0 1px 0",
   :border-bottom (str "1px solid " (hsl 0 0 100 0.5)),
   :border-radius 0,
   :outline :none,
   :line-height "28px",
   :font-size 14,
   :font-family ui/font-normal,
   :padding "0 8px"})

(defcomp
 comp-home
 (states router-data)
 (let [state (or (:data states) {:query ""})]
   (div
    {:style (merge ui/flex ui/column {:padding 8, :overflow :auto})}
    (div
     {:style (merge ui/row-parted {:align-items :center, :padding "0 8px"})}
     (div
      {:style (merge ui/flex ui/row-middle)}
      (input
       {:style style-filter,
        :value (:query state),
        :placeholder "filter...",
        :on-input (fn [e d! m!] (m! (assoc state :query (:value e))))})
      (list->
       {:style (merge ui/flex ui/row {:flex-wrap :wrap})}
       (->> (:workflows router-data)
            (filter
             (fn [[k workflow]]
               (:matches?
                (parse-by-letter
                 (string/lower-case (:name workflow))
                 (string/lower-case (:query state))))))
            (sort-by (fn [[k workflow]] (:name workflow)))
            (map-val (fn [workflow] (comp-command-button workflow))))))
     (div
      {:style ui/row-middle}
      (cursor->
       :quick-panel
       comp-popup
       states
       {:trigger (button {:style style/button, :inner-text "Run"})}
       (fn [on-toggle]
         (cursor->
          :quick-run
          comp-command-editor
          states
          nil
          (fn [draft d! m!]
            (d!
             :effect/run
             {:command (:code draft), :cwd (:path draft), :title (:title draft)})
            (on-toggle m!)))))
      (=< 8 nil)
      (a {:style style/link, :on-click (action-> :process/clear nil)} (<> "Clear"))))
    (=< nil 8)
    (list->
     {:style (merge ui/flex {:overflow :auto, :padding-bottom 120})}
     (->> (:processes router-data)
          (sort (fn [x y] (- (:started-at (val y)) (:started-at (val x)))))
          (map (fn [[pid process]] [pid (comp-process process)])))))))
