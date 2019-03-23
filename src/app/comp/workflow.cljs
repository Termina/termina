
(ns app.comp.workflow
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.core
             :refer
             [defcomp <> action-> cursor-> mutation-> list-> span div input button a]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]
            [app.style :as style]
            [app.util :refer [map-val]]
            [inflow-popup.comp.popup :refer [comp-popup]]))

(defcomp
 comp-command-editor
 (states on-toggle workflow-id base-command)
 (println "command" base-command)
 (let [state (or (:data states)
                 (if (some? base-command)
                   (select-keys base-command [:code :path])
                   {:code "", :path "./"}))]
   (div
    {}
    (div {} (<> "Command"))
    (div
     {}
     (input
      {:style (merge ui/input {:width 320, :font-family ui/font-code}),
       :value (:code state),
       :placeholder "Command code",
       :on-input (mutation-> (assoc state :code (:value %e)))}))
    (=< nil 16)
    (div
     {}
     (input
      {:style (merge ui/input {:width 320, :font-family ui/font-code}),
       :value (:path state),
       :placeholder "Command path",
       :on-input (mutation-> (assoc state :path (:value %e)))}))
    (=< nil 16)
    (div
     {:style ui/row-parted}
     (span {})
     (button
      {:style style/button,
       :on-click (fn [e d! m!]
         (if (some? base-command)
           (d! :workflow/edit-command [workflow-id (:id base-command) state])
           (d!
            :workflow/add-command
            {:workflow-id workflow-id, :code (:code state), :path (:path state)}))
         (m! nil)
         (on-toggle m!))}
      (<> "add"))))))

(defcomp
 comp-command-row
 (states command workflow-id)
 (div
  {:style {:font-family ui/font-code}}
  (<> (:path command) {:display :inline-block, :min-width 200})
  (=< 8 nil)
  (<>
   (:code command)
   {:background-color (hsl 0 0 95),
    :padding "0 8px",
    :display :inline-block,
    :min-width 320})
  (cursor->
   :add
   comp-popup
   states
   {:trigger (a {:style style/link} (<> "edit")), :style {:display :inline-block}}
   (fn [on-toggle]
     (cursor-> :edit-command comp-command-editor states on-toggle workflow-id command)))
  (span
   {:style style/link,
    :inner-text "rm",
    :on-click (action-> :workflow/remove-command [workflow-id (:id command)])})))

(defcomp
 comp-workflow-editor
 (states base-workflow on-toggle)
 (let [state (or (:data states)
                 (if (some? base-workflow)
                   (select-keys base-workflow [:name :base-dir])
                   {:name "", :base-dir "./"}))]
   (div
    {}
    (div {} (<> "Workflow"))
    (div
     {}
     (input
      {:style (merge ui/input {:width 240}),
       :placeholder "Workflow name",
       :value (:name state),
       :on-input (mutation-> (assoc state :name (:value %e)))}))
    (=< nil 16)
    (div
     {}
     (input
      {:style (merge ui/input {:width 240}),
       :placeholder "Base directory",
       :value (:base-dir state),
       :on-input (mutation-> (assoc state :base-dir (:value %e)))}))
    (=< nil 16)
    (div
     {:style ui/row-parted}
     (span {})
     (button
      {:style style/button,
       :on-click (fn [e d! m!]
         (let [data (select-keys state [:name :base-dir])]
           (if (some? base-workflow)
             (d! :workflow/edit (assoc data :id (:id base-workflow)))
             (d! :workflow/create data))
           (m! nil)
           (on-toggle m!)))}
      (<> "Submit"))))))

(defcomp
 comp-workflow-detail
 (states workflow)
 (div
  {}
  (div
   {:style (merge ui/row {:align-items :center})}
   (<> (:name workflow) {:font-size 24})
   (=< 8 nil)
   (<> (:base-dir workflow) {:font-family ui/font-code, :color (hsl 0 0 70)})
   (cursor->
    :edit
    comp-popup
    states
    {:trigger (span {:style style/link, :inner-text "edit"}),
     :style {:display :inline-block}}
    (fn [on-toggle] (cursor-> :editor comp-workflow-editor states workflow on-toggle)))
   (span
    {:style style/link,
     :inner-text "rm",
     :on-click (action-> :workflow/remove (:id workflow))}))
  (list->
   {}
   (->> (:commands workflow)
        (map
         (fn [[k command]] [k (cursor-> k comp-command-row states command (:id workflow))]))))
  (=< nil 16)
  (div
   {}
   (cursor->
    :add
    comp-popup
    states
    {:trigger (button {:style style/button} (<> "add"))}
    (fn [on-toggle]
      (cursor-> :add-command comp-command-editor states on-toggle (:id workflow) nil))))))

(defcomp
 comp-workflow-container
 (states workflows)
 (let [state (or (:data states) {:focused-id nil, :base-workflow nil})]
   (div
    {:style (merge ui/row {:padding 16})}
    (div
     {:style {:width 200}}
     (div {:style ui/row} (<> "Workflows" {:font-family ui/font-fancy}))
     (list->
      {}
      (->> workflows
           (map-val
            (fn [workflow]
              (div
               {:style {:cursor :pointer,
                        :padding "0 8px",
                        :margin-bottom 8,
                        :min-width 40,
                        :min-height 20,
                        :border-bottom (str "1px solid " (hsl 0 0 90)),
                        :border-color (if (= (:id workflow) (:focused-id state))
                          (hsl 0 0 80)
                          (hsl 0 0 94))},
                :on-click (mutation-> (assoc state :focused-id (:id workflow)))}
               (<> (:name workflow)))))))
     (div
      {}
      (cursor->
       :workflow-editor
       comp-popup
       states
       {:trigger (button {:style style/button} (<> "add"))}
       (fn [on-toggle] (cursor-> :editor comp-workflow-editor states nil on-toggle)))))
    (=< 32 nil)
    (div
     {:style ui/flex}
     (let [focused-id (:focused-id state)]
       (if (and (some? focused-id) (some? (get workflows focused-id)))
         (let [workflow (get workflows focused-id)]
           (cursor-> :detail comp-workflow-detail states workflow))
         (div {} (<> "Nothing" {:font-family ui/font-fancy}))))))))
