
(ns app.twig.container
  (:require [recollect.twig :refer [deftwig]]
            [app.twig.user :refer [twig-user]]
            ["randomcolor" :as color]))

(deftwig
 twig-members
 (sessions users)
 (->> sessions
      (map (fn [[k session]] [k (get-in users [(:user-id session) :name])]))
      (into {})))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?, :session session, :reel-length (count records)}
       {workflows :workflows, processes :processes, histories :histories} db]
   (merge
    base-data
    (if logged-in?
      {:user (twig-user (get-in db [:users (:user-id session)])),
       :router (assoc
                router
                :data
                (case (:name router)
                  :history {:histories histories}
                  :workflows {:workflows workflows}
                  :home {:processes processes, :workflows workflows}
                  :process
                    (let [process-id (-> router :params :id)] (get processes process-id))
                  :profile (twig-members (:sessions db) (:users db))
                  {})),
       :count (count (:sessions db)),
       :color (color/randomColor)}
      nil))))
