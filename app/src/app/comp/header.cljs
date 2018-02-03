
(ns app.comp.header
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> action-> span div]]
            [respo.comp.space :refer [=<]]))

(defn on-profile [e dispatch!]
  (dispatch! :router/change {:name :profile, :data nil, :router nil}))

(def style-logo {:cursor :pointer, :color (hsl 0 0 60)})

(defn render-entry [router router-name title]
  (div
   {:style (merge style-logo (if (= router-name (:name router)) {:color :black})),
    :on-click (action-> :router/change {:name router-name})}
   (<> title)))

(def style-header
  {:height 48,
   :justify-content :space-between,
   :padding "0 16px",
   :font-size 16,
   :border-bottom (str "1px solid " (hsl 0 0 85))})

(def style-pointer {:cursor "pointer"})

(defcomp
 comp-header
 (logged-in? router)
 (div
  {:style (merge ui/row-center style-header)}
  (div
   {:style ui/row}
   (render-entry router :home "Termina")
   (=< 16 nil)
   (render-entry router :workflows "Workflows")
   (=< 16 nil)
   (render-entry router :history "History"))
  (div
   {:style style-pointer, :on-click on-profile}
   (<> span (if logged-in? "Me" "Guest") nil))))
