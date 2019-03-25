
(ns app.updater.workflow (:require [app.schema :as schema]))

(defn add-command [db op-data sid op-id op-time]
  (let [{workflow-id :workflow-id, draft :draft} op-data]
    (assoc-in db [:workflows workflow-id :commands op-id] (merge draft {:id op-id}))))

(defn create-workflow [db op-data sid op-id op-time]
  (let [{workflow-name :name, base-dir :base-dir} op-data]
    (assoc-in
     db
     [:workflows op-id]
     (merge
      schema/workflow
      {:id op-id,
       :name workflow-name,
       :base-dir base-dir,
       :commands {op-id (merge
                         schema/command
                         {:id op-id,
                          :title workflow-name,
                          :path base-dir,
                          :code "echo nothing yet"})}}))))

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
