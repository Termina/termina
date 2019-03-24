
(ns app.comp.navigation
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> action-> span div]]
            [app.config :as config]))

(def style-logo {:cursor :pointer, :color (hsl 0 0 60)})

(defn render-entry [router router-name title]
  (div
   {:style (merge style-logo (if (= router-name (:name router)) {:color :white})),
    :on-click (action-> :router/change {:name router-name})}
   (<> title)))

(defcomp
 comp-navigation
 (logged-in? router count-members)
 (div
  {:style (merge
           ui/row-center
           {:height 32,
            :justify-content :space-between,
            :padding "0 16px",
            :font-size 16,
            :border-bottom (str "1px solid " (hsl 0 0 0 0.1)),
            :font-family ui/font-fancy,
            :background-color (hsl 0 0 0 0.6)})}
  (div
   {:style ui/row}
   (render-entry router :home "Termina")
   (=< 16 nil)
   (render-entry router :workflows "Workflows")
   (=< 16 nil)
   (render-entry router :history "History"))
  (div
   {:style {:cursor "pointer"}, :on-click (action-> :router/change {:name :profile})}
   (<> (if logged-in? "Me" "Guest"))
   (=< 8 nil)
   (<> count-members))))
