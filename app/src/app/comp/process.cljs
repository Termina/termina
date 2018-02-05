
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp list-> action-> <> span div button]]
            [app.style :as style]
            [app.util :refer [map-with-index]]))

(defcomp
 comp-process
 (process)
 (div
  {:style {:padding 8,
           :margin 8,
           :font-family ui/font-code,
           :background-color (if (:alive? process) (hsl 120 100 90) (hsl 240 50 98))}}
  (div
   {:style (merge ui/row {:align-items :center})}
   (<> (:command process))
   (span
    {:on-click (action-> :router/change {:name :process, :params {:id (:pid process)}})}
    (<> "view" style/link))
   (if (:alive? process)
     (button
      {:style style/button, :on-click (action-> :effect/kill (:pid process))}
      (<> "Kill"))
     (button
      {:style style/button,
       :on-click (action-> :effect/run {:cwd (:cwd process), :command (:command process)})}
      (<> "Redo"))))
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
        (map-with-index
         (fn [chunk]
           (<>
            (:data chunk)
            {:color (case (:type chunk)
               :stderr (hsl 60 80 36)
               :error (hsl 0 80 50)
               (hsl 60 0 0))})))))))
