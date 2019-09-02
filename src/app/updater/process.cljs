
(ns app.updater.process (:require [app.schema :as schema] [medley.core :refer [dissoc-in]]))

(defn clear [db op-data sid op-id op-time]
  (update
   db
   :processes
   (fn [processes]
     (->> processes (filter (fn [[pid process]] (:alive? process))) (into {})))))

(defn clear-history [db op-data sid op-id op-time] (assoc db :histories []))

(defn create [db op-data sid op-id op-time]
  (let [new-history (merge
                     schema/history
                     {:command (:command op-data),
                      :cwd (:cwd op-data),
                      :started-at op-time,
                      :id op-id,
                      :title (:title op-data)})]
    (-> db
        (assoc-in
         [:processes (:pid op-data)]
         (merge schema/process op-data {:started-at op-time, :alive? true}))
        (update
         :histories
         (fn [histories]
           (if (vector? histories) (conj histories new-history) [new-history]))))))

(defn error [db op-data sid op-id op-time]
  (let [[pid data] op-data]
    (update-in
     db
     [:processes pid :content]
     (fn [content] (conj content {:type :error, :data data})))))

(defn finish [db op-data sid op-id op-time]
  (assoc-in db [:processes op-data :alive?] false))

(defn remove-dead [db op-data sid op-id op-time]
  (if (= false (get-in db [:processes op-data :alive?]))
    (dissoc-in db [:processes op-data])
    db))

(defn shorten-content [db op-data sid op-id op-time]
  (update-in db [:processes op-data] (fn [process] (assoc process :content []))))

(defn stderr [db op-data sid op-id op-time]
  (let [[pid data] op-data]
    (update-in
     db
     [:processes pid :content]
     (fn [content] (conj content {:type :stderr, :data data})))))

(defn stdout [db op-data sid op-id op-time]
  (let [[pid data] op-data]
    (update-in
     db
     [:processes pid :content]
     (fn [content] (conj content {:type :stdout, :data data})))))
