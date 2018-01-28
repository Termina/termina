
(ns server.manager (:require ["child_process" :as cp]))

(defonce *registry (atom {}))

(defn create-process! [command dispatch!]
  (let [proc (.exec cp command)]
    (swap! *registry assoc proc.id proc)
    (dispatch! :process/create {:pid proc.id, :command command, :dir (.-pwd proc)})
    (.on proc "exit" (fn [event] (dispatch! :process/finish proc.id)))
    (.on
     proc.stdout
     "data"
     (fn [data] (dispatch! :process/stdout {:pid proc.id, :data data})))
    (.on
     proc.stderr
     "data"
     (fn [data] (dispatch! :process/stderr {:pid proc.id, :data data})))))

(defn kill-process! [pid dispatch!]
  (let [proc (get @*registry pid)]
    (if (some? proc)
      (do (.kill proc) (swap! *registry dissoc pid) (dispatch! :process/kill pid)))))
