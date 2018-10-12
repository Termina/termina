
(ns app.style (:require [hsl.core :refer [hsl]] [respo-ui.core :as ui]))

(def button
  (merge ui/button {:padding "0 8px", :min-width 40, :line-height "24px", :height "24px"}))

(def input (merge ui/input {:width 320}))

(def link
  {:text-decoration :underline,
   :cursor :pointer,
   :color (hsl 240 80 80),
   :font-family ui/font-fancy,
   :margin "0 8px"})
