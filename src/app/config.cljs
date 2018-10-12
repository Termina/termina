
(ns app.config (:require [app.util :refer [get-env!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage-key "termina",
   :port 11014,
   :title "Termina",
   :icon "http://cdn.tiye.me/logo/termina.png",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/termina/",
   :cdn-folder "tiye.me:cdn/termina",
   :upload-folder "tiye.me:repo/mvc-works/termina/",
   :server-folder "tiye.me:servers/termina",
   :theme "#eeeeff"})
