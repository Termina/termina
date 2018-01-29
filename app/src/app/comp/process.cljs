
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp list-> action-> <> span div button]]))

(defcomp
 comp-process
 (process)
 (div
  {:style {:padding 16,
           :margin 8,
           :font-family ui/font-code,
           :background-color (if (:alive? process) (hsl 120 80 97) (hsl 240 50 95))}}
  (div
   {:style ui/row-parted}
   (div
    {:style ui/row-center}
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
       {:style ui/button, :on-click (action-> :effect/kill (:pid process))}
       (<> "Kill"))
      (button
       {:style ui/button,
        :on-click (action-> :effect/run {:cwd (:cwd process), :command (:command process)})}
       (<> "Redo")))))
  (list->
   {:style {:font-family ui/font-code,
            :white-space :pre,
            :font-size 12,
            :line-height "1.5em"}}
   (->> (:content process)
        (take-last 2)
        (map-indexed (fn [idx chunk] [idx (<> (:data chunk))]))))
  (if (not (empty? (:content process)))
    (div
     {}
     (button
      {:style ui/button, :on-click (action-> :process/shorten-content (:pid process))}
      (<> "Shorten"))
     (=< 8 nil)
     (<> (str "content size: " (count (:content process))))))))
