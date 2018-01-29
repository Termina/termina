
(ns server.twig.container
  (:require [recollect.macros :refer [deftwig]] [server.twig.user :refer [twig-user]]))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?,
                  :reel-length (count records),
                  :notifications (:notifications session)}]
   (merge
    base-data
    (if logged-in?
      {:user (twig-user (get-in db [:users (:user-id session)])),
       :router router,
       :processes (:processes db),
       :workflows (:workflows db)}
      nil))))
