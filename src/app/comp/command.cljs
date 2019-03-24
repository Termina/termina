
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
            [app.style :as style]))

(defcomp
 comp-command-editor
 (states on-toggle workflow-id base-command)
 (let [state (or (:data states)
                 (if (some? base-command)
                   (select-keys base-command [:code :path])
                   {:title "", :code "", :path "./"}))]
   (div
    {:style ui/column}
    (div {} (<> "Command" {:font-family ui/font-fancy}))
    (=< nil 8)
    (input
     {:style (merge ui/input {:width 320, :font-family ui/font-code}),
      :value (:title state),
      :placeholder "Titlte",
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
      {:style style/button,
       :on-click (fn [e d! m!]
         (if (some? base-command)
           (d! :workflow/edit-command [workflow-id (:id base-command) state])
           (d!
            :workflow/add-command
            {:workflow-id workflow-id,
             :title (:title state),
             :code (:code state),
             :path (:path state)}))
         (m! nil)
         (on-toggle m!))}
      (<> "Submit"))))))

(defcomp
 comp-command-row
 (states command workflow-id)
 (div
  {:style (merge ui/row-middle {:font-family ui/font-code})}
  (<> (or (:title command) "Task"))
  (<> (:path command) {:display :inline-block, :min-width 200})
  (=< 8 nil)
  (<>
   (:code command)
   {:background-color (hsl 0 0 95),
    :padding "0 8px",
    :display :inline-block,
    :min-width 320})
  (=< 8 nil)
  (cursor->
   :add
   comp-popup
   states
   {:trigger (comp-i :edit-2 14 (hsl 200 80 60)), :style {:display :inline-block}}
   (fn [on-toggle]
     (cursor-> :edit-command comp-command-editor states on-toggle workflow-id command)))
  (=< 8 nil)
  (cursor->
   :remove
   comp-confirm
   states
   {:trigger (comp-i :x 18 (hsl 0 80 60))}
   (fn [e d! m!] (d! :workflow/remove-command [workflow-id (:id command)])))))

(defcomp
 comp-commander
 (states)
 (let [state (or (:data states) {:command "", :cwd ""})]
   (div
    {}
    (input
     {:value (:cwd state),
      :style (merge ui/input {:width 160, :font-family ui/font-code}),
      :placeholder "cwd",
      :on-input (mutation-> (assoc state :cwd (:value %e)))})
    (=< 8 nil)
    (input
     {:value (:command state),
      :style (merge ui/input {:width 160, :font-family ui/font-code}),
      :placeholder "Command",
      :on-input (mutation-> (assoc state :command (:value %e)))})
    (=< 8 nil)
    (button
     {:style ui/button,
      :on-click (fn [e d! m!]
        (println state)
        (d! :effect/run {:command (:command state), :cwd (:cwd state)}))}
     (<> "Run")))))
