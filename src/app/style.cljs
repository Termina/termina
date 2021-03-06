
(ns app.style (:require [hsl.core :refer [hsl]] [respo-ui.core :as ui]))

(def button (merge ui/button {:background-color :transparent}))

(def input (merge ui/input {:width 320}))

(def link
  {:text-decoration :underline,
   :cursor :pointer,
   :color (hsl 240 80 80),
   :font-family ui/font-fancy,
   :margin "0 8px"})

(def text
  {:padding "0 8px",
   :line-height "24px",
   :min-height 24,
   :display :inline-block,
   :color :white})
