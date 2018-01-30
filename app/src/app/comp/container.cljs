
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> div cursor-> span button]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.header :refer [comp-header]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [app.comp.reel :refer [comp-reel]]
            [app.comp.missing :refer [comp-missing]]
            [app.comp.home :refer [comp-home]]
            [app.comp.workflow :refer [comp-workflow-container]]))

(def style-alert {:font-family "Josefin Sans", :font-weight 100, :font-size 40})

(def style-debugger {:bottom 0, :left 0, :max-width "100%"})

(defcomp
 comp-container
 (states store)
 (let [state (:data states), session (:session store)]
   (if (nil? store)
     (div
      {:style (merge ui/global ui/fullscreen ui/center)}
      (span
       {:style {:cursor :pointer}, :on-click (fn [e d! m!] (d! :effect/connect nil))}
       (<> "No connection!" style-alert)))
     (div
      {:style (merge ui/global ui/fullscreen ui/column)}
      (comp-header (:logged-in? store))
      (=< nil 8)
      (if (:logged-in? store)
        (let [router (:router store)]
          (case (:name router)
            :profile (comp-profile (:user store))
            :home (comp-home store states)
            :workflows
              (cursor-> :workflows comp-workflow-container states (:workflows store))
            (comp-missing)))
        (comp-login states))
      (comp-inspect "Store" store style-debugger)
      (comp-msg-list (get-in store [:notifications]) :session/remove-notification)
      (comp-reel (:reel-length store) {})))))
