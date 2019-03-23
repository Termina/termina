
(ns app.comp.missing
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> span div]]))

(defcomp
 comp-missing
 (router)
 (div {} (<> "Page missing") (div {:style {:font-family ui/font-code}} (<> router))))
