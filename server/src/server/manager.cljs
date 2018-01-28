
(ns server.manager )

(defonce *registry (atom {}))

(defn create-process! [dir command] (println "create process" command))
