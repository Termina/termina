
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> div cursor-> action-> span button pre]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.header :refer [comp-header]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [app.comp.reel :refer [comp-reel]]
            [app.comp.missing :refer [comp-missing]]
            [app.comp.home :refer [comp-home]]
            [app.comp.workflow :refer [comp-workflow-container]]
            [app.comp.history :refer [comp-history]]
            [app.comp.process-detail :refer [comp-process-detail]]))

(defcomp
 comp-offline
 ()
 (div
  {:style (merge ui/global ui/fullscreen ui/center)}
  (span
   {:style {:font-family ui/font-fancy, :font-weight 100, :font-size 40, :cursor :pointer},
    :title "Click to reconnect!",
    :on-click (action-> :effect/connect nil)}
   (<> "No connection!"))
  (<>
   "This is a placeholder page for Termina, install and run the command line to try again:")
  (pre {:inner-text "npm i -g termina", :style {:font-family ui/font-code}})))

(def style-debugger {:bottom 0, :left 0, :max-width "100%"})

(defcomp
 comp-container
 (states store)
 (let [state (:data states), session (:session store)]
   (if (nil? store)
     (comp-offline)
     (div
      {:style (merge ui/global ui/fullscreen ui/column)}
      (comp-header (:logged-in? store) (:router store))
      (=< nil 8)
      (if (:logged-in? store)
        (let [router (:router store), router-data (:data router)]
          (case (:name router)
            :profile (comp-profile (:user store))
            :home (comp-home router-data states)
            :workflows
              (cursor-> :workflows comp-workflow-container states (:workflows router-data))
            :history (comp-history (:histories router-data))
            :process (comp-process-detail router-data)
            (comp-missing router)))
        (comp-login states))
      (comp-inspect "Store" (:router store) style-debugger)
      (comp-msg-list (get-in store [:notifications]) :session/remove-notification)
      (comp-reel (:reel-length store) {})))))
