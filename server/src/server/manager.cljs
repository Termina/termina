
(ns server.manager (:require [verbosely.core :refer [log!]] ["child_process" :as cp]))

(defonce *registry (atom {}))

(defn create-process! [op-data dispatch!]
  (let [command (:command op-data)
        cwd (:cwd op-data)
        proc (.exec cp command (clj->js {:cwd cwd}))
        pid proc.pid]
    (swap! *registry assoc pid proc)
    (dispatch! :process/create {:pid pid, :command command, :cwd cwd})
    (.on proc "exit" (fn [event] (dispatch! :process/finish pid)))
    (.on proc.stdout "data" (fn [data] (dispatch! :process/stdout {:pid pid, :data data})))
    (.on proc.stderr "data" (fn [data] (dispatch! :process/stderr {:pid pid, :data data})))))

(defn kill-process! [pid dispatch!]
  (let [proc (get @*registry pid)]
    (if (some? proc)
      (do (.kill proc) (swap! *registry dissoc pid) (dispatch! :process/kill pid)))))
