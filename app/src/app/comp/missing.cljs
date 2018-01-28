
(ns app.comp.missing
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp <> span div]]))

(defcomp comp-missing () (div {} (<> "Page missing")))
