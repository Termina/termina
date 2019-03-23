
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core :refer [defcomp <> action-> list-> span div]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-history
 (histories)
 (div
  {:style {:padding "0 16px"}}
  (list->
   {}
   (->> histories
        (map
         (fn [history]
           [(:id history)
            (div
             {}
             (<> (:command history))
             (=< 16 nil)
             (<> (:cwd history))
             (=< 16 nil)
             (<> (:started-at history)))]))))))
