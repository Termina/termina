
(ns server.updater.process (:require [server.schema :as schema]))

(defn clear [db op-data sid op-id op-time]
  (update
   db
   :processes
   (fn [processes]
     (->> processes (filter (fn [[pid process]] (:alive? process))) (into {})))))

(defn create [db op-data sid op-id op-time]
  (-> db
      (assoc-in
       [:processes (:pid op-data)]
       (merge schema/process op-data {:started-at op-time, :alive? true}))
      (update
       :histories
       (fn [histories]
         (conj
          histories
          (merge
           schema/history
           {:command (:command op-data),
            :cwd (:cwd op-data),
            :started-at op-time,
            :id op-id}))))))

(defn finish [db op-data sid op-id op-time]
  (assoc-in db [:processes op-data :alive?] false))

(defn kill [db op-data sid op-id op-time] (assoc-in db [:processes op-data :alive?] false))

(defn shorten-content [db op-data sid op-id op-time]
  (update-in db [:processes op-data] (fn [process] (assoc process :content []))))

(defn stderr [db op-data sid op-id op-time]
  (update-in
   db
   [:processes (:pid op-data) :content]
   (fn [content] (conj content {:type :stderr, :data (:data op-data)}))))

(defn stdout [db op-data sid op-id op-time]
  (update-in
   db
   [:processes (:pid op-data) :content]
   (fn [content] (conj content {:type :stdout, :data (:data op-data)}))))
