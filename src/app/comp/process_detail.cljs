
(ns app.comp.process-detail
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core :refer [defcomp <> action-> span div pre list-> code]]
            [respo.comp.space :refer [=<]]
            [app.util :refer [map-with-index]]
            [app.style :as style]))

(defcomp
 comp-process-detail
 (process)
 (div
  {:style (merge ui/flex ui/column {:padding "8px 16px", :overflow :auto})}
  (div
   {:style {:font-family ui/font-code}}
   (code
    {:inner-text (or (:title process) "Task"), :style (merge style/text {:padding "0 8px"})})
   (=< 16 nil)
   (<> (:command process) style/text)
   (=< 16 nil)
   (<> (:cwd process) style/text)
   (=< 16 nil)
   (<> (:pid process) style/text)
   (=< 16 nil)
   (if (not (empty? (:content process)))
     (div
      {}
      (span
       {:on-click (action-> :process/shorten-content (:pid process))}
       (<> "Shorten" style/link)))))
  (list->
   {:style (merge ui/flex {:overflow :auto})}
   (->> (:content process)
        (map-with-index
         (fn [chunk]
           (div
            {:style {:border (str "1px solid " (hsl 0 0 100 0.3)),
                     :padding 8,
                     :background-color (hsl 0 0 0 0.5),
                     :margin "16px 0"}}
            (div {} (<> (:type chunk)))
            (pre
             {:style {:line-height 1.4, :font-size 12, :margin "0"},
              :inner-text (:data chunk)}))))))))
