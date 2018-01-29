
(ns server.updater.workflow (:require [server.schema :as schema]))

(defn create [db op-data sid op-id op-time]
  (let [workflow-name op-data]
    (assoc-in
     db
     [:workflows op-id]
     (merge schema/workflow {:id op-id, :name workflow-name, :base-dir "./"}))))
