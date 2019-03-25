
(ns app.comp.command
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core
             :refer
             [defcomp cursor-> mutation-> action-> <> span div input button a]]
            [respo.comp.space :refer [=<]]
            [feather.core :refer [comp-i]]
            [inflow-popup.comp.popup :refer [comp-popup]]
            [respo-alerts.comp.alerts :refer [comp-confirm]]
            [app.style :as style]
            [app.util :refer [join-path map-val]]))

(defcomp
 comp-command-button
 (workflow)
 (div
  {:style {:background-color (hsl 100 120 60),
           :padding "0 8px",
           :display :inline-block,
           :cursor :pointer,
           :margin 8,
           :color (hsl 0 0 40)},
   :on-click (fn [e d! m!]
     (doseq [command (vals (:commands workflow))]
       (d!
        :effect/run
        {:command (:code command),
         :cwd (join-path (:base-dir workflow) (:path command)),
         :title (:title command)})))}
  (<> (:name workflow))))

(defcomp
 comp-command-editor
 (states base-command on-submit)
 (let [state (or (:data states)
                 (if (some? base-command)
                   (select-keys base-command [:code :path :title])
                   {:title "", :code "", :path "./"}))]
   (div
    {:style ui/column}
    (div {} (<> "Command" {:font-size 16, :font-family ui/font-fancy}))
    (=< nil 8)
    (input
     {:style (merge ui/input {:width 320, :font-family ui/font-code}),
      :value (:title state),
      :placeholder "title...",
      :on-input (mutation-> (assoc state :title (:value %e)))})
    (=< nil 8)
    (input
     {:style (merge ui/input {:width 320, :font-family ui/font-code}),
      :value (:code state),
      :placeholder "Command code",
      :on-input (mutation-> (assoc state :code (:value %e)))})
    (=< nil 8)
    (input
     {:style (merge ui/input {:width 320, :font-family ui/font-code}),
      :value (:path state),
      :placeholder "Command path",
      :on-input (mutation-> (assoc state :path (:value %e)))})
    (=< nil 16)
    (div
     {:style ui/row-parted}
     (span nil)
     (button
      {:style style/button, :on-click (fn [e d! m!] (on-submit state d! m!) (m! nil))}
      (<> "Submit"))))))

(defcomp
 comp-command-row
 (states command workflow-id)
 (div
  {:style (merge
           ui/column
           {:border (str "1px solid " (hsl 0 0 100 0.3)),
            :border-radius "4px",
            :padding "8px 8px",
            :width 600,
            :min-width :max-content,
            :margin "16px 8px",
            :color :white})}
  (div
   {:style ui/row-parted}
   (<> (or (:title command) "Task") {:font-size 20})
   (div
    {:style ui/row-parted}
    (cursor->
     :add
     comp-popup
     states
     {:trigger (comp-i :edit-2 14 (hsl 200 80 60)), :style {:display :inline-block}}
     (fn [on-toggle]
       (cursor->
        :edit-command
        comp-command-editor
        states
        command
        (fn [command-draft d! m!]
          (d! :workflow/edit-command [workflow-id (:id command) command-draft])
          (on-toggle m!)))))
    (=< 8 nil)
    (cursor->
     :remove
     comp-confirm
     states
     {:trigger (comp-i :x 18 (hsl 0 80 60))}
     (fn [e d! m!] (d! :workflow/remove-command [workflow-id (:id command)])))))
  (div
   {:style (merge ui/row-middle {:font-family ui/font-code})}
   (<>
    (:path command)
    {:display :inline-block, :background-color (hsl 0 0 100 0.2), :padding "0 8px"})
   (=< 24 nil)
   (<>
    (:code command)
    {:background-color (hsl 0 0 100 0.2),
     :padding "0 8px",
     :display :inline-block,
     :min-width 320}))))
