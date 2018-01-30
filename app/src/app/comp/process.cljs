
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp list-> action-> <> span div button]]
            [app.style :as style]))

(defcomp
 comp-process
 (process)
 (div
  {:style {:padding 16,
           :margin 8,
           :font-family ui/font-code,
           :background-color (if (:alive? process) (hsl 60 90 90) (hsl 240 50 98))}}
  (div
   {:style (merge ui/row {:align-items :center})}
   (<> (:command process))
   (=< 16 nil)
   (<>
    (:cwd process)
    {:font-size 12, :color (hsl 120 50 60), :vertical-align :top, :line-height "1.4em"}))
  (div
   {:style ui/row}
   (<> (:pid process))
   (=< 8 nil)
   (if (:alive? process)
     (button
      {:style style/button, :on-click (action-> :effect/kill (:pid process))}
      (<> "Kill"))
     (button
      {:style style/button,
       :on-click (action-> :effect/run {:cwd (:cwd process), :command (:command process)})}
      (<> "Redo")))
   (=< 8 nil)
   (if (not (empty? (:content process)))
     (div
      {}
      (<> (str "size: " (count (:content process))))
      (=< 8 nil)
      (button
       {:style style/button, :on-click (action-> :process/shorten-content (:pid process))}
       (<> "Shorten")))))
  (list->
   {:style {:font-family ui/font-code,
            :white-space :pre,
            :font-size 12,
            :line-height "1.5em",
            :max-height 400,
            :max-width 800,
            :overflow :auto}}
   (->> (:content process)
        (take-last 4)
        (map-indexed
         (fn [idx chunk]
           [idx
            (<>
             (:data chunk)
             {:color (if (= :stderr (:type chunk)) (hsl 0 80 60) (hsl 0 0 0))})]))))))
