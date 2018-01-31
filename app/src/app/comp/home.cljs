
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp cursor-> action-> list-> button <> span div]]
            [app.comp.commander :refer [comp-commander]]
            [app.comp.process :refer [comp-process]]
            [app.util :refer [join-path]]))

(defcomp
 comp-home
 (store states)
 (div
  {:style {:padding 8, :overflow :auto}}
  (div
   {:style ui/row-parted}
   (cursor-> :commander comp-commander states)
   (=< 16 nil)
   (div
    {}
    (button {:style ui/button, :on-click (action-> :process/clear nil)} (<> "Clear"))))
  (=< nil 8)
  (div
   {}
   (list->
    {}
    (->> (:workflows store)
         (map
          (fn [[k workflow]]
            [k
             (div
              {:style {:background-color (hsl 60 90 47),
                       :padding "0 8px",
                       :display :inline-block,
                       :cursor :pointer,
                       :margin 8},
               :on-click (fn [e d! m!]
                 (doseq [command (vals (:commands workflow))]
                   (d!
                    :effect/run
                    {:command (:code command),
                     :cwd (join-path (:base-dir workflow) (:path command))})))}
              (<> (:name workflow)))])))))
  (=< nil 8)
  (list->
   {:style (merge ui/row {:align-items :flex-start, :flex-wrap :wrap})}
   (->> (:processes store)
        (sort (fn [x y] (- (:started-at (val y)) (:started-at (val x)))))
        (map (fn [[pid process]] [pid (comp-process process)]))))))
