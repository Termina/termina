
(ns server.twig.container
  (:require [recollect.macros :refer [deftwig]]
            [server.twig.user :refer [twig-user]]
            [server.util :refer [map-val]]))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?,
                  :reel-length (count records),
                  :notifications (:notifications session)}
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
                  router))}
      nil))))
