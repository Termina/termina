
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo-ui.colors :as colors]
            [respo.core :refer [defcomp cursor-> action-> list-> button <> span div a]]
            [app.comp.process :refer [comp-process]]
            [app.util :refer [join-path map-val]]
            [app.style :as style]
            [app.comp.command :refer [comp-command-button comp-command-editor]]
            [inflow-popup.comp.popup :refer [comp-popup]]))

(defcomp
 comp-home
 (router-data states)
 (div
  {:style (merge ui/flex ui/column {:padding 8, :overflow :auto})}
  (div
   {:style (merge ui/row-parted {:align-items :center})}
   (list->
    {:style ui/row}
    (->> (:workflows router-data) (map-val (fn [workflow] (comp-command-button workflow)))))
   (div
    {:style ui/row-middle}
    (cursor->
     :quick-panel
     comp-popup
     states
     {:trigger (button {:style ui/button, :inner-text "Run"})}
     (fn [on-toggle]
       (cursor->
        :quick-run
        comp-command-editor
        states
        nil
        (fn [draft d! m!]
          (d! :effect/run {:command (:code draft), :cwd (:path draft), :title (:title draft)})
          (on-toggle m!)))))
    (=< 8 nil)
    (a {:style style/link, :on-click (action-> :process/clear nil)} (<> "Clear"))))
  (=< nil 8)
  (list->
   {:style (merge
            ui/flex
            ui/row
            {:align-items :flex-start, :flex-wrap :wrap, :overflow :auto})}
   (->> (:processes router-data)
        (sort (fn [x y] (- (:started-at (val y)) (:started-at (val x)))))
        (map (fn [[pid process]] [pid (comp-process process)]))))))
