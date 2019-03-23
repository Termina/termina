
(ns app.comp.process-detail
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core :refer [defcomp <> action-> span div pre list->]]
            [respo.comp.space :refer [=<]]
            [app.util :refer [map-with-index]]
            [app.style :as style]))

(defcomp
 comp-process-detail
 (process)
 (div
  {:style {:padding "8px 16px", :overflow :auto, :flex 1}}
  (div
   {}
   (<> (:command process))
   (=< 8 nil)
   (<> (:cwd process))
   (=< 8 nil)
   (<> (:pid process))
   (=< 8 nil)
   (if (not (empty? (:content process)))
     (div
      {}
      (span
       {:on-click (action-> :process/shorten-content (:pid process))}
       (<> "Shorten" style/link)))))
  (div {})
  (list->
   {}
   (->> (:content process)
        (map-with-index
         (fn [chunk]
           (div
            {:style {:border (str "1px solid " (hsl 0 0 80)), :padding 8}}
            (div {} (<> (:type chunk)))
            (pre
             {:style {:line-height 1.4, :font-size 12, :margin-top 0},
              :inner-text (:data chunk)}))))))))
