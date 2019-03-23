
(ns app.config )

(def cdn?
  (cond
    (exists? js/window) false
    (exists? js/process) (= "true" js/process.env.cdn)
    :else false))

(def dev?
  (let [debug? (do ^boolean js/goog.DEBUG)]
    (if debug?
      (cond
        (exists? js/window) true
        (exists? js/process) (not= "true" js/process.env.release)
        :else true)
      false)))

(def site
  {:port 11014,
   :title "Termina",
   :icon "http://cdn.tiye.me/logo/termina.png",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/termina/",
   :cdn-folder "tiye.me:cdn/termina",
   :upload-folder "tiye.me:repo/mvc-works/termina/",
   :server-folder "tiye.me:servers/termina",
   :theme "#eeeeff",
   :storage-key "termina",
   :storage-file "termina.edn"})
