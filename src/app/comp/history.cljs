
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core :refer [defcomp <> action-> list-> span div]]
            [respo.comp.space :refer [=<]]
            [app.style :as style]
            ["dayjs" :as dayjs]))

(defcomp
 comp-history
 (histories)
 (div
  {:style (merge ui/flex {:padding "16px 16px", :font-family ui/font-code, :overflow :auto})}
  (if (empty? histories)
    (<> "Empty" {:font-family ui/font-fancy, :font-weight 100, :color :white})
    (list->
     {:style (merge ui/flex {:overflow :auto})}
     (->> histories
          (map
           (fn [history]
             [(:id history)
              (div
               {:style (merge ui/row-middle {:margin "16px 8px"})}
               (<>
                (-> (:started-at history) dayjs (.format "MM-DD HH:mm:ss"))
                (merge style/text {:font-size 12}))
               (=< 16 nil)
               (<> (:cwd history) style/text)
               (=< 16 nil)
               (<> (:command history) style/text))])))))))
