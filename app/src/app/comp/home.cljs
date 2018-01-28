
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp cursor-> <> span div]]
            [app.comp.commander :refer [comp-commander]]))

(defcomp
 comp-home
 (store states)
 (div {} (div {} (cursor-> :commander comp-commander states)) (div {})))
