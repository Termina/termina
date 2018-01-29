
(ns server.updater.core
  (:require [server.updater.session :as session]
            [server.updater.user :as user]
            [server.updater.router :as router]
            [server.updater.process :as process]))

(defn updater [db op op-data sid op-id op-time]
  (case op
    :session/connect (session/connect db op-data sid op-id op-time)
    :session/disconnect (session/disconnect db op-data sid op-id op-time)
    :user/log-in (user/log-in db op-data sid op-id op-time)
    :user/sign-up (user/sign-up db op-data sid op-id op-time)
    :user/log-out (user/log-out db op-data sid op-id op-time)
    :session/remove-notification (session/remove-notification db op-data sid op-id op-time)
    :router/change (router/change db op-data sid op-id op-time)
    :process/create (process/create db op-data sid op-id op-time)
    :process/kill (process/kill db op-data sid op-id op-time)
    :process/stdout (process/stdout db op-data sid op-id op-time)
    :process/stderr (process/stderr db op-data sid op-id op-time)
    :process/clear (process/clear db op-data sid op-id op-time)
    :process/finish (process/finish db op-data sid op-id op-time)
    db))
