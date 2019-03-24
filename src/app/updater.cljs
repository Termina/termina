
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.schema :as schema]
            [respo-message.updater :refer [update-messages]]
            [app.updater.process :as process]
            [app.updater.workflow :as workflow]))

(defn updater [db op op-data sid op-id op-time]
  (let [f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :session/remove-message session/remove-message
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :router/change router/change
            :process/create process/create
            :process/stdout process/stdout
            :process/stderr process/stderr
            :process/clear process/clear
            :process/finish process/finish
            :process/shorten-content process/shorten-content
            :workflow/create workflow/create-workflow
            :workflow/remove workflow/remove-workflow
            :workflow/add-command workflow/add-command
            :workflow/remove-command workflow/remove-command
            :workflow/edit-command workflow/edit-command
            :workflow/edit workflow/edit-workflow
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time)))
