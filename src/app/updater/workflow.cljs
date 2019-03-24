
(ns app.updater.workflow (:require [app.schema :as schema]))

(defn add-command [db op-data sid op-id op-time]
  (let [{workflow-id :workflow-id, code :code, path :path} op-data]
    (assoc-in
     db
     [:workflows workflow-id :commands op-id]
     {:id op-id, :title (:title op-data), :code code, :path path})))

(defn create-workflow [db op-data sid op-id op-time]
  (let [{workflow-name :name, base-dir :base-dir} op-data]
    (assoc-in
     db
     [:workflows op-id]
     (merge schema/workflow {:id op-id, :name workflow-name, :base-dir base-dir}))))

(defn edit-command [db op-data sid op-id op-time]
  (let [[workflow-id command-id changes] op-data]
    (update-in
     db
     [:workflows workflow-id :commands command-id]
     (fn [command] (merge command changes)))))

(defn edit-workflow [db op-data sid op-id op-time]
  (let [new-workflow op-data]
    (update-in
     db
     [:workflows (:id new-workflow)]
     (fn [workflow] (merge workflow new-workflow)))))

(defn remove-command [db op-data sid op-id op-time]
  (let [[workflow-id command-id] op-data]
    (update-in
     db
     [:workflows workflow-id :commands]
     (fn [commands] (dissoc commands command-id)))))

(defn remove-workflow [db op-data sid op-id op-time]
  (let [workflow-id op-data]
    (update db :workflows (fn [workflows] (dissoc workflows workflow-id)))))
