
(ns app.comp.process
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp list-> action-> <> span div button a]]
            [app.style :as style]
            [app.util :refer [map-with-index]]))

(def style-content-list
  {:font-family ui/font-code,
   :white-space :pre,
   :font-size 12,
   :line-height "1.5em",
   :max-height 240,
   :max-width 800,
   :overflow :auto})

(defcomp
 comp-process
 (process)
 (div
  {:style (merge
           {:margin 8,
            :font-family ui/font-code,
            :border-radius "4px",
            :display :inline-block,
            :vertical-align :top})}
  (div
   {:style (merge
            ui/row-parted
            {:background-color "rgb(213,214,209)", :color :black, :padding "4px 4px"}
            (if (:alive? process) {:background-color (hsl 50 100 60)}))}
   (div
    {:style ui/row-middle}
    (<> (or (:title process) "Task") (merge style/text {:color :black})))
   (div
    {:style ui/row-middle}
    (span
     {:on-click (action-> :router/change {:name :process, :params {:id (:pid process)}})}
     (<> "view" style/link))
    (if (:alive? process)
      (button
       {:style (merge style/button {:color :red, :border-color :red}),
        :on-click (action-> :effect/kill (:pid process))}
       (<> "Kill"))
      (a
       {:style style/link,
        :inner-text "Redo",
        :on-click (fn [e d! m!]
          (d!
           :effect/run
           {:cwd (:cwd process), :command (:command process), :title (:title process)})
          (d! :process/remove-dead (:pid process)))}))))
  (div
   {:style (merge ui/row-middle {:background-color (hsl 0 0 0 0.5), :font-size 10})}
   (<> (:command process) (merge style/text))
   (=< 8 nil)
   (<> (:cwd process) (merge style/text {:color (hsl 0 0 60)})))
  (if-not (empty? (:content process))
    (list->
     {:style style-content-list}
     (->> (:content process)
          (take-last 4)
          (map-with-index
           (fn [chunk]
             (let [urls (re-seq (re-pattern "https?://\\S+") (:data chunk))]
               (div
                {:style {:margin-top 2, :display :block, :background-color (hsl 0 0 0 0.5)}}
                (if-not (empty? urls)
                  (list->
                   {}
                   (->> urls
                        (map
                         (fn [url]
                           [url
                            (a
                             {:inner-text url,
                              :target "_blank",
                              :href url,
                              :style {:color (hsl 200 80 70), :margin "0 8px"}})])))))
                (<>
                 (:data chunk)
                 {:color (case (:type chunk)
                    :stderr (hsl 60 80 36)
                    :error (hsl 0 80 50)
                    (hsl 60 0 80)),
                  :padding 8,
                  :display :block,
                  :white-space :pre-line}))))))))))
