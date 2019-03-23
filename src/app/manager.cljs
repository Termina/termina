
(ns app.manager (:require ["child_process" :as cp]))

(defonce *registry (atom {}))

(defn create-process! [op-data dispatch!]
  (let [command (:command op-data)
        cwd (:cwd op-data)
        proc (.exec cp command (clj->js {:cwd cwd}))
        pid proc.pid]
    (swap! *registry assoc pid proc)
    (dispatch! :process/create {:pid pid, :command command, :cwd cwd})
    (.on proc "exit" (fn [event] (dispatch! :process/finish pid)))
    (.on proc "error" (fn [event] (dispatch! :process/error [pid (str event)])))
    (.on proc.stdout "data" (fn [data] (dispatch! :process/stdout [pid data])))
    (.on proc.stderr "data" (fn [data] (dispatch! :process/stderr [pid data])))))

(defn kill-process! [pid dispatch!]
  (let [proc (get @*registry pid)]
    (if (some? proc)
      (do (.kill proc "SIGINT") (swap! *registry dissoc pid) (dispatch! :process/kill pid))
      (dispatch! :process/kill pid))))
