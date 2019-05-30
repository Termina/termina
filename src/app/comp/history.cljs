
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> action-> list-> span div button]]
            [respo.comp.space :refer [=<]]
            [app.style :as style]
            ["dayjs" :as dayjs]))

(defcomp
 comp-history
 (histories)
 (div
  {:style (merge
           ui/flex
           ui/column
           {:padding "16px 16px", :font-family ui/font-code, :overflow :auto})}
  (div
   {}
   (button
    {:style style/button,
     :inner-text "Clear",
     :on-click (fn [e d! m!] (d! :process/clear-history nil))}))
  (=< nil 16)
  (if (empty? histories)
    (<> "Empty" {:font-family ui/font-fancy, :font-weight 100, :color :white})
    (list->
     {:style (merge ui/flex {:overflow :auto, :padding "16px 0 120px 0"})}
     (->> histories
          (map
           (fn [history]
             [(:id history)
              (div
               {:style (merge
                        ui/row-middle
                        {:margin "0px",
                         :background-color (hsl 200 80 24),
                         :padding "4px 8px",
                         :width 960,
                         :min-width :max-content,
                         :border-bottom (str "1px solid " (hsl 0 0 0 0.2)),
                         :word-break :break-word})}
               (<>
                (-> (:started-at history) dayjs (.format "MM-DD HH:mm:ss"))
                (merge style/text {:font-size 12, :color (hsl 0 0 70)}))
               (<> (or (:title history) "Task") (merge style/text {:min-width 160}))
               (<> (:command history) (merge style/text {:min-width 160}))
               (<> (:cwd history) (merge style/text)))])))))))
