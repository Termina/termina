
(ns app.style (:require [respo-ui.core :as ui]))

(def button
  (merge ui/button {:padding "0 8px", :min-width 40, :line-height "24px", :height "24px"}))

(def input (merge ui/input {:width 320}))

(def link (merge ui/link))
