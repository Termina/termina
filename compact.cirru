
{} (:package |app)
  :configs $ {} (:init-fn |app.server/main!) (:reload-fn |app.server/reload!) (:version |0.1.19)
    :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/
  :entries $ {}
    :page $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!)
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/ |alerts.calcit/ |respo-feather.calcit/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *store nil)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                url-obj $ url-parse js/location.href true
                host $ either (-> url-obj .-query .-host) js/location.hostname
                port $ either (-> url-obj .-query .-port) (:port config/site)
              ws-connect! (str "\"ws://" host "\":" port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "\"Lost connection!")
                  :on-data on-server-data
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                println "\"Dispatch" op
              tag-match op
                  :states cursor s
                  reset! *states $ update-states @*states cursor s
                (:effect/connect) (connect!)
                _ $ ws-send! op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-app!
              connect!
              add-watch *store :changes $ fn (s p) (render-app!)
              add-watch *states :changes $ fn (s p) (render-app!)
              js/window.addEventListener "\"keydown" $ fn (event) (on-window-keydown event)
              on-page-touch $ \ if (nil? @*store) (connect!)
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              case-default (:kind data) (println "\"unknown server data kind:" data)
                :patch $ let
                    changes $ :data data
                  when config/dev? $ js/console.log "\"Changes" changes
                  reset! *store $ patch-twig @*store changes
        |on-window-keydown $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-window-keydown (event)
              when
                and
                  = "\"k" $ .-key event
                  .-metaKey event
                case-default (-> @*store :router :name)
                  do $ println "\"no thing to clear in" (-> @*store :router :name)
                  :home $ do
                    dispatch! $ :: :process/clear
                    if-let
                      enlarge-view $ -> @*store :session w-js-log :enlarge-view
                      dispatch! $ :: :process/shorten-content enlarge-view
                  :history $ dispatch! (:: :process/clear-history)
                  :process $ dispatch!
                    :: :process/shorten-content $ -> @*store :router :params :id
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! "\"error" $ str client-errors &newline server-errors
              do (hud! "\"inactive" nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "\"Code updated."
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (:states @*states) @*store
              , dispatch!
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (:storage-key config/site)
              if (some? raw)
                do (println "\"Found storage.")
                  dispatch! $ :: :user/log-in (parse-cirru-edn raw)
                do $ println "\"Found no storage."
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.client $ :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] respo.cursor :refer $ [] update-states
            [] app.comp.container :refer $ [] comp-container
            [] app.schema :as schema
            [] app.config :as config
            [] ws-edn.client :refer $ [] ws-connect! ws-send!
            [] recollect.patch :refer $ [] patch-twig
            [] cumulo-util.core :refer $ [] on-page-touch
            [] "\"url-parse" :default url-parse
            "\"bottom-tip" :default hud!
            "\"./calcit.build-errors" :default client-errors
            "\"../js-out/calcit.build-errors" :default server-errors
    |app.comp.command $ %{} :FileEntry
      :defs $ {}
        |comp-command-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-command-button (workflow)
              div
                {}
                  :style $ {}
                    :background-color $ hsl 100 120 60
                    :padding "|0 8px"
                    :display :inline-block
                    :cursor :pointer
                    :margin 4
                    :color $ hsl 0 0 40
                  :on-click $ fn (e d!)
                    &doseq
                      command $ vals (:commands workflow)
                      d! :effect/run $ {}
                        :command $ :code command
                        :cwd $ join-path (:base-dir workflow) (:path command)
                        :title $ :title command
                <> $ :name workflow
        |comp-command-editor $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-command-editor (states base-command on-submit)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    if (some? base-command)
                      select-keys base-command $ [] :code :path :title
                      {} (:title "\"") (:code "\"") (:path "\"./")
                div
                  {} $ :style
                    merge ui/column $ {} (:padding "\"0 16px 16px")
                  div ({})
                    <> "\"Command" $ {} (:font-size 16) (:font-family ui/font-fancy)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $ :title state
                    :placeholder "\"title..."
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :title (:value e)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $ :code state
                    :placeholder "\"Command code"
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :code (:value e)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $ :path state
                    :placeholder "|Command path"
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :path (:value e)
                  =< nil 16
                  div
                    {} $ :style ui/row-parted
                    span nil
                    button
                      {} (:style style/button)
                        :on-click $ fn (e d!) (on-submit state d!) (d! cursor nil)
                      <> |Submit
        |comp-command-row $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-command-row (states command workflow-id)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :pop? false
                  remove-plugin $ use-confirm (>> states :remove) ({})
                div
                  {} $ :style style-command-row
                  div
                    {} $ :style ui/row-parted
                    div
                      {} $ :style ui/row-middle
                      <>
                        or (:title command) "\"Task"
                        {} $ :font-size 20
                      =< 8 nil
                      comp-icon :play
                        {} (:font-size 14) (:cursor :pointer)
                          :color $ hsl 200 80 70
                        fn (e d! m!)
                          d! :effect/run $ {}
                            :cwd $ :path command
                            :command $ :code command
                            :title $ :title command
                    div
                      {} $ :style ui/row-parted
                      comp-icon :edit-2
                        &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                        fn (e d!)
                          d! cursor $ assoc state :pop? true
                      comp-modal
                        {} (:title |Demo)
                          :style $ {} (:width 400)
                          :container-style $ {}
                          :render $ fn (on-close)
                            comp-command-editor (>> states :edit-command) command $ fn (command-draft d! m!)
                              d! :workflow/edit-command $ [] workflow-id (:id command) command-draft
                              on-close
                        :pop? state
                        fn (d!)
                          d! cursor $ assoc state :pop? false
                      =< 8 nil
                      comp-icon :x
                        &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                        fn (e d!)
                          .show remove-plugin d! $ fn ()
                            d! :workflow/remove-command $ [] workflow-id (:id command)
                  div
                    {} $ :style
                      merge ui/row-middle $ {} (:font-family ui/font-code)
                    <> (:path command)
                      {} (:display :inline-block)
                        :background-color $ hsl 0 0 100 0.2
                        :padding "|0 8px"
                    =< 24 nil
                    <> (:code command)
                      {}
                        :background-color $ hsl 0 0 100 0.2
                        :padding "|0 8px"
                        :display :inline-block
                        :min-width 320
                  .render remove-plugin
        |style-command-row $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-command-row $ merge ui/column
              {}
                :border $ str "\"1px solid " (hsl 0 0 100 0.3)
                :border-radius "\"4px"
                :padding "\"8px 8px"
                :width 600
                :min-width :max-content
                :margin "\"16px 8px"
                :color :white
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.command $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> span div input button a
            [] respo.comp.space :refer $ [] =<
            [] feather.core :refer $ [] comp-i comp-icon
            [] respo-alerts.core :refer $ [] use-confirm comp-modal
            [] app.style :as style
            [] app.util :refer $ [] join-path
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $ :data states
                  session $ :session store
                  router $ :router store
                  router-data $ :data router
                if (nil? store) (comp-offline)
                  div
                    {} $ :class-name (str-spaced css/global css/fullscreen css/column css-container)
                    comp-navigation (:logged-in? store) router $ :count store
                    if (:logged-in? store)
                      let
                          router $ :router store
                          router-data $ :data router
                        case-default (:name router) (comp-missing router)
                          :profile $ comp-profile (:user store) router-data
                          :home $ comp-home (>> states :home) router-data
                          :workflows $ comp-workflow-container (>> states :workflows) (:workflows router-data)
                          :history $ comp-history (:histories router-data)
                          :process $ comp-process-detail (>> states :detail) (:detail router-data)
                      comp-login $ >> states :login
                    comp-status-color $ :color store
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      get-in store $ [] :session :messages
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    when dev? $ comp-reel (:reel-length store) ({})
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge ui/global ui/fullscreen ui/column-dispersive $ {}
                  :background-color $ :theme config/site
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
                  :background-image $ str "\"url(" (:icon config/site) "\")"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height "\"32px")
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {} (:class-name css-status)
                :style $ {} (:background-color color)
        |css-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-container $ {}
              "\"&" $ {}
                :color $ hsl 0 0 70
        |css-status $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-status $ {}
              "\"&" $ let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:border-radius "\"50%") (:opacity 0.6) (:pointer-events :none)
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> div span button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
            app.comp.missing :refer $ comp-missing
            app.comp.home :refer $ comp-home
            app.comp.workflow :refer $ comp-workflow-container
            app.comp.history :refer $ comp-history
            app.comp.process-detail :refer $ comp-process-detail
            respo.css :refer $ defstyle
    |app.comp.history $ %{} :FileEntry
      :defs $ {}
        |comp-history $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-history (histories)
              div
                {} $ :class-name css-history-page
                div ({})
                  button $ {} (:class-name css/button) (:inner-text "\"Clear")
                    :on-click $ fn (e d!) (d! :process/clear-history nil)
                =< nil 16
                if (empty? histories)
                  <> "\"Empty" $ {} (:font-family ui/font-fancy) (:font-weight 100) (:color :white)
                  list->
                    {} $ :style
                      merge ui/flex $ {} (:overflow :auto) (:padding "\"16px 0 120px 0")
                    -> histories $ map
                      fn (history)
                        [] (:id history)
                          div
                            {} $ :class-name (str-spaced css/row-middle css-history)
                            <>
                              -> (:started-at history) dayjs $ .!format "\"MM-DD HH:mm:ss"
                              , css-date-text
                            <>
                              or (:title history) "\"Task"
                              merge style/text $ {} (:min-width 160)
                            <> (:command history)
                              merge style/text $ {} (:min-width 160)
                            <> (:cwd history) (merge style/text)
        |css-date-text $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-date-text $ {}
              "\"&" $ merge style/text
                {} (:font-size 12)
                  :color $ hsl 0 0 70
        |css-history $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-history $ {}
              "\"&" $ {} (:margin "\"0px")
                :background-color $ hsl 200 40 28
                :padding "\"4px 8px"
                :width 960
                :min-width :max-content
                :border-bottom $ str "\"1px solid " (hsl 0 0 0 0.2)
                :word-break :break-word
              "\"&:hover" $ {}
                :background-color $ hsl 200 40 32
        |css-history-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-history-page $ {}
              "\"&" $ merge ui/flex ui/column
                {} (:padding "|16px 16px") (:font-family ui/font-code) (:overflow :auto)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.history $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> list-> span div button
            respo.comp.space :refer $ =<
            app.style :as style
            "\"dayjs" :default dayjs
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |app.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home (states router-data)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} (:query "\"") (:pop? false)
                div
                  {} $ :class-name (str-spaced css/expand css/column css-home)
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced css/expand css/row)
                    if-let
                      enlarge-view $ get router-data :enlarge-view
                      if-let
                        large-process $ get (:processes router-data) enlarge-view
                        comp-process-detail (>> states :enlarge) large-process
                    div
                      {} $ :class-name (str-spaced css/expand css/column)
                      div
                        {} (:class-name css/row-parted)
                          :style $ {} (:align-items :center) (:padding "\"0 8px")
                        div
                          {} $ :class-name (str-spaced css/flex css/row-middle)
                          input $ {} (:class-name css-filter) (:placeholder "\"filter...")
                            :value $ :query state
                            :on-input $ fn (e d!)
                              d! cursor $ assoc state :query (:value e)
                          list->
                            {}
                              :class-name $ str-spaced css/flex css/row
                              :style $ {} (:flex-wrap :wrap)
                            -> (:workflows router-data) (.to-list)
                              .filter-pair $ fn (k workflow)
                                :matches? $ parse-by-letter
                                  .!toLowerCase $ :name workflow
                                  .!toLowerCase $ :query state
                              .sort-by $ fn (pair)
                                :name $ last pair
                              .map-pair $ fn (k workflow)
                                [] k $ comp-command-button workflow
                        div
                          {} $ :class-name css/row-middle
                          button $ {}
                            :class-name $ str-spaced css/button style/css-button
                            :inner-text "\"Run"
                            :on-click $ fn (e d!)
                              d! cursor $ assoc state :pop? true
                          comp-modal
                            {} (:title |Demo)
                              :style $ {} (:width 400)
                              :container-style $ {}
                              :render $ fn (on-close)
                                comp-command-editor (>> states :quick-run) nil $ fn (draft d!)
                                  d! :effect/run $ {}
                                    :command $ :code draft
                                    :cwd $ :path draft
                                    :title $ :title draft
                                  on-close d!
                            :pop? state
                            fn (d!)
                              d! cursor $ assoc state :pop? false
                          =< 8 nil
                          button $ {}
                            :class-name $ str-spaced css/button style/css-button
                            :inner-text "\"Kill all"
                            :on-click $ fn (e d!)
                              &doseq
                                pid $ keys (:processes router-data)
                                d! :effect/kill pid
                          =< 8 nil
                          a
                            {} (:class-name css/link)
                              :on-click $ fn (e d!) (d! :process/clear nil)
                            <> "\"Clear"
                      list->
                        {} $ :class-name (str-spaced css/flex css-process-list)
                        -> (:processes router-data) (.to-list)
                          filter $ fn (x)
                            not= (first x) (get router-data :enlarge-view)
                          .sort $ fn (x y)
                            if
                              and
                                :alive? $ last y
                                :alive? $ last x
                              -
                                :started-at $ last x
                                :started-at $ last y
                              -
                                :started-at $ last y
                                :started-at $ last x
                          .sort-by $ fn (pair)
                            not $ :alive? (last pair)
                          .map-pair $ fn (pid process)
                            [] pid $ comp-process process
        |css-filter $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-filter $ {}
              "\"&" $ {} (:min-width 60) (:width 60) (:background-color :transparent)
                :color $ hsl 0 0 100 0.8
                :border-width "\"0 0 1px 0"
                :border-bottom $ str "\"1px solid " (hsl 0 0 100 0.5)
                :border-radius 0
                :outline :none
                :line-height "\"28px"
                :font-size 14
                :font-family ui/font-normal
                :padding "\"0 8px"
        |css-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-home $ {}
              "\"&" $ merge ui/flex ui/column
                {} (:padding "\"8px 0px") (:overflow :auto)
        |css-process-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-process-list $ {}
              "\"&" $ {} (:overflow :auto) (:flex-wrap :wrap) (:padding-bottom 120) (:align-items :flex-start) (:gap "\"8px") (:grid-template-columns "\"repeat(auto-fit, minmax(560px, 1fr))") (:grid-auto-flow :dense) (:display :grid) (:padding-bottom 120) (:margin "\"0 8px") (:overflow :auto)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.home $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp >> list-> button <> span div a input
            app.comp.process :refer $ comp-process
            app.comp.process-detail :refer $ comp-process-detail
            app.util :refer $ join-path map-val
            app.style :as style
            app.comp.command :refer $ comp-command-button comp-command-editor
            fuzzy-filter.core :refer $ parse-by-letter
            respo-alerts.core :refer $ comp-modal
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.css :as css
            respo.css :refer $ defstyle
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states) initial-state
                div
                  {} $ :style (merge ui/flex ui/center)
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ :username state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (:value e)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ :password state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (:value e)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge style/link
                        :on-click $ on-submit (:username state) (:password state) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge style/link
                        :on-click $ on-submit (:username state) (:password state) false
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (:storage-key config/site)
                  format-cirru-edn $ [] username password
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] app.config :as config
    |app.comp.missing $ %{} :FileEntry
      :defs $ {}
        |comp-missing $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-missing (router)
              div ({}) (<> "|Page missing")
                div
                  {} $ :style
                    {} $ :font-family ui/font-code
                  <> router
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.missing $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> span div
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navigation (logged-in? router count-members)
              div
                {} $ :class-name css-nav
                div
                  {} $ :style ui/row
                  render-entry router :home |Termina
                  =< 16 nil
                  render-entry router :workflows |Workflows
                  =< 16 nil
                  render-entry router :history |History
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
        |css-nav $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-nav $ {}
              "\"&" $ merge ui/row-center
                {} (:height 32) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                  :font-family ui/font-fancy
                  :background-color $ hsl 0 0 0 0.04
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-entry (router router-name title)
              div
                {}
                  :style $ merge style-logo
                    if
                      = router-name $ :name router
                      {} $ :color :white
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name router-name)
                <> title
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-logo $ {} (:cursor :pointer)
              :color $ hsl 0 0 60
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> >> span div
            app.config :as config
            respo.css :refer $ defstyle
    |app.comp.process $ %{} :FileEntry
      :defs $ {}
        |comp-process $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-process (process)
              div
                {} $ :class-name css-process
                div
                  {} (:class-name css-title-bar)
                    :style $ if (:alive? process)
                      {} $ :background-color (hsl 50 100 60)
                  div
                    {} $ :class-name css/row-middle
                    <>
                      or (:title process) "\"Task"
                      merge style/text $ {} (:color :black)
                  div
                    {} $ :class-name css/row-middle
                    button $ {} (:class-name css/button)
                      :style $ {}
                        :background $ hsl 0 0 0 0.1
                        :color :white
                      :on-click $ fn (e d!)
                        d! $ :: :session/enlarge (:pid process)
                      :inner-text "\"Enlarge"
                    ; =< 8 nil
                    ; a $ {} (:class-name css/link)
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :process)
                          :params $ {}
                            :id $ :pid process
                      :inner-text "\"View"
                    if (:alive? process)
                      a
                        {} (:class-name css-link-kill)
                          :on-click $ fn (e d!)
                            d! :effect/kill $ :pid process
                        <> "\"Kill"
                      a $ {} (:style style/link) (:inner-text "\"Redo")
                        :on-click $ fn (e d!)
                          d! :effect/run $ {}
                            :cwd $ :cwd process
                            :command $ :command process
                            :title $ :title process
                          d! :process/remove-dead $ :pid process
                div
                  {} $ :class-name (str-spaced css/expand css-process-log)
                  <> (:command process) (merge style/text)
                  =< 8 nil
                  <> (:cwd process)
                    merge style/text $ {}
                      :color $ hsl 0 0 60
                if-not
                  empty? $ :content process
                  list->
                    {} $ :class-name css-content-list
                    -> (:content process) (.to-list) (take-last 4)
                      .map-indexed $ fn (idx chunk)
                        [] idx $ let
                            urls $ to-calcit-data
                              .!match (:data chunk) url-pattern
                          div
                            {} $ :style
                              {} (:margin-top 2) (:display :block)
                                :background-color $ hsl 0 0 0 0.5
                            if-not (empty? urls)
                              list-> ({})
                                -> urls $ map
                                  fn (url)
                                    [] url $ a
                                      {} (:inner-text url) (:target "\"_blank") (:href url)
                                        :style $ {}
                                          :color $ hsl 200 80 70
                                          :margin "\"0 8px"
                            <> (:data chunk)
                              {}
                                :color $ case-default (:type chunk) (hsl 60 0 72)
                                  :stderr $ hsl 60 80 36
                                  :error $ hsl 0 80 50
                                :padding 8
                                :display :block
                                :white-space :pre-line
        |css-content-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-content-list $ {}
              "\"&" $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height "\"1.5em") (:max-height 240) (:overflow :auto) (:border-radius "\"4px")
        |css-link-kill $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-link-kill $ {}
              "\"&" $ merge style/link
                {} (:color :red) (:border-color :red)
        |css-process $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-process $ {}
              "\"&" $ merge
                {} (:font-family ui/font-code) (:border-radius "\"4px") (:display :inline-block) (:vertical-align :top)
        |css-process-log $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-process-log $ {}
              "\"&" $ merge ui/row-middle
                {}
                  :background-color $ hsl 0 0 0 0.5
                  :font-size 10
        |css-title-bar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-title-bar $ {}
              "\"&" $ merge ui/row-parted
                {}
                  :background-color $ hsl 0 0 100 0.4
                  :color :black
                  :padding "\"4px 4px"
                  :border-radius "\"4px"
        |url-pattern $ %{} :CodeEntry (:doc |)
          :code $ quote
            def url-pattern $ new js/RegExp "\"https?://\\S+" "\"g"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.process $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp list-> >> <> span div button a
            app.style :as style
            app.util :refer $ map-with-index
            respo-alerts.core :refer $ comp-alerts
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |app.comp.process-detail $ %{} :FileEntry
      :defs $ {}
        |comp-process-detail $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-process-detail (states process)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:filter "\"") (:filter? true) (:wrap? true) (:all-log? false) (:hide-thread-info? false)
                  command-plugin $ use-prompt (>> states :command)
                    {} (:text "\"change command")
                      :initial $ :command process
                div
                  {} (:class-name css-process)
                    :style $ {} (:flex 2)
                  div
                    {} $ :class-name css/row-parted
                    div
                      {} $ :style
                        merge ui/row-middle $ {} (:gap 4)
                      input $ {} (:type "\"checkbox")
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $ :filter? state
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :filter?
                            not $ :filter? state
                      if (:filter? state)
                        input $ {} (:class-name css-filter)
                          :value $ :filter state
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :filter (:value e)
                          :placeholder "\"filter..."
                        <> "\"Filter..."
                      input $ {} (:type "\"checkbox")
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $ :all-log? state
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :all-log?
                            not $ :all-log? state
                      <> "\"All log?"
                      comp-icon :arrow-down
                        {} (:font-size 14) (:class-name css-down-icon)
                          :color $ hsl 0 0 80
                        , on-scroll-down!
                      if-not
                        empty? $ :content process
                        a
                          {}
                            :on-click $ fn (e d!)
                              d! :process/shorten-content $ :pid process
                            :style style/link
                          <> "\"Clear"
                      =< 8 nil
                      input $ {} (:type "\"checkbox")
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $ :hide-thread-info? state
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :hide-thread-info?
                            not $ :hide-thread-info? state
                      <> "\"HideThread?"
                      input $ {} (:type "\"checkbox")
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $ :wrap? state
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :wrap?
                            not $ :wrap? state
                      <> "\"Wrap?"
                    div
                      {} $ :class-name css-toolbar
                      span $ {}
                        :inner-text $ or (:title process) "\"Task"
                        :class-name css/font-fancy
                        :style $ merge style/text
                          {} $ :padding "\"0 8px"
                          if (:alive? process)
                            {} (:color :black) (:border-radius "\"4px")
                              :background-color $ hsl 60 100 60
                        :title $ str (:cwd process) &newline (:command process)
                        :on-click $ fn (e d!)
                          .show command-plugin d! $ fn (text)
                            d! $ :: :process/change-command (:pid process) text
                      ; =< 16 nil
                      ; <> (:command process) style/text
                      ; =< 16 nil
                      ; <> $ merge style/text
                        {} (:font-size 12)
                          :color $ hsl 0 0 70
                      ; =< 16 nil
                      ; <> (:pid process) style/text
                      =< 8 nil
                      if (:alive? process)
                        a
                          {} (:class-name css/link)
                            :style $ {} (:color :red) (:border-color :red)
                            :on-click $ fn (e d!)
                              d! :effect/kill $ :pid process
                            :title $ :command process
                          <> "\"Kill"
                        div ({})
                          a $ {} (:class-name css/link) (:inner-text "\"Redo")
                            :title $ :command process
                            :on-click $ fn (e d!)
                              d! :effect/run $ {}
                                :cwd $ :cwd process
                                :command $ :command process
                                :title $ :title process
                                :enlarge? true
                              d! :process/remove-dead $ :pid process
                          =< 8 nil
                          a $ {} (:class-name css/link) (:inner-text "\"Drop")
                            :on-click $ fn (e d!)
                              d! :router/change $ {} (:name :home)
                              d! :process/remove-dead $ :pid process
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced "\"scroll-area" css-logs-list)
                    if (some? process)
                      list->
                        {} $ :style
                          {} $ :white-space
                            if (:wrap? state) "\"pre-wrap" "\"pre"
                        -> (:content process)
                          filter $ fn (chunk)
                            if
                              or
                                not $ :filter? state
                                blank? $ :filter state
                              , true $ .includes? (:data chunk) (:filter state)
                          take-last $ if (:all-log? state) 2000 60
                          map-indexed $ fn (idx chunk)
                            [] (:data chunk)
                              span $ {} (:class-name css-log)
                                :style $ merge
                                  if
                                    = :stderr $ :type chunk
                                    {} $ :color :red
                                :inner-text $ do
                                  if (:hide-thread-info? state)
                                    hide-thread-info $ :data chunk
                                    :data chunk
                                  ; .!replace (:data chunk) &newline $ str &newline &newline
                    =< nil 200
                  .render command-plugin
        |css-down-icon $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-down-icon $ {}
              "\"&" $ {} (:opacity 0.8) (:cursor :pointer)
              "\"&:hover" $ {} (:opacity 1)
        |css-filter $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-filter $ {}
              "\"&" $ merge ui/input
                {}
                  :color $ hsl 0 0 100
                  :background-color $ hsl 0 0 100 0
                  :border-color $ hsl 0 0 100 0.4
        |css-log $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-log $ {}
              "\"&" $ {} (:font-size 12) (:margin "\"0") (:font-family ui/font-code) (:line-height "\"20px")
        |css-logs-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-logs-list $ {}
              "\"&" $ merge ui/flex
                {} (:overflow :auto)
                  :border $ str "\"1px solid " (hsl 0 0 100 0.3)
                  :padding 8
                  :background-color $ hsl 0 0 0 0.5
                  :overflow :auto
                  :word-break :break-all
                  :line-height 1.4
        |css-process $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-process $ {}
              "\"&" $ merge ui/flex ui/column
                {} (; :padding "|8px 16px") (:overflow :auto) (:color "\"#aaa")
        |css-toolbar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-toolbar $ {}
              "\"&" $ merge ui/row-middle
                {} $ :font-family ui/font-code
        |hide-thread-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hide-thread-info (text) (.!replace text thread-info-pattern "\"")
        |on-scroll-down! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-scroll-down! (e d!)
              if-let
                el $ js/document.querySelector "\".scroll-area"
                set! (.-scrollTop el) (.-scrollHeight el)
        |thread-info-pattern $ %{} :CodeEntry (:doc |)
          :code $ quote
            def thread-info-pattern $ new js/RegExp "\"^[\\d\\s\\:\\-\\.\\+]+\\s+(\\[([\\w\\d\\s\\:\\,])+\\]\\s?)+"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.process-detail $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> span div pre list-> code button a input
            respo.comp.space :refer $ =<
            app.util :refer $ map-with-index
            app.style :as style
            respo.css :refer $ defstyle
            feather.core :refer $ comp-icon
            respo-ui.comp :refer $ comp-tabs
            respo-ui.css :as css
            respo-alerts.core :refer $ use-modal-menu use-prompt
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (:name user)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> "\"Members:"
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> members (.to-list)
                      .map-pair $ fn (k username)
                        [] k $ div
                          {} $ :style
                            {} (:padding "\"0 8px")
                              :border $ str "\"1px solid " (hsl 0 0 80)
                              :border-radius "\"16px"
                              :margin "\"0 4px"
                          <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge style/button
                      :on-click $ fn (e d!)
                        .replace js/location $ str js/location.origin "\"?time=" (.now js/Date)
                    <> "\"Refresh"
                  =< 8 nil
                  button
                    {}
                      :style $ merge style/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                        js/localStorage.removeItem $ :storage-key config/site
                    <> "\"Log out"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            [] app.style :as style
    |app.comp.workflow $ %{} :FileEntry
      :defs $ {}
        |comp-workflow-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-container (states workflows)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} (:focused-id nil) (:base-workflow nil) (:pop? false)
                div
                  {} $ :style
                    merge ui/flex ui/row $ {} (:padding 16)
                  div
                    {} $ :style
                      {} $ :width 200
                    div
                      {} $ :style ui/row-parted
                      <> |Workflows $ {} (:font-family ui/font-fancy)
                      comp-icon :plus
                        {} (:font-size 16)
                          :color $ hsl 200 80 60
                          :cursor :pointer
                        fn (e d!)
                          d! cursor $ assoc state :pop? true
                      comp-modal
                        {} (:title |Demo)
                          :style $ {} (:width 400)
                          :container-style $ {}
                          :render $ fn (on-close)
                            comp-workflow-editor (>> states :editor) nil on-close
                        :pop? state
                        fn (d!)
                          d! cursor $ assoc state :pop? false
                    =< nil 8
                    list-> ({})
                      -> workflows (.to-list)
                        .sort-by $ fn (pair)
                          :name $ last pair
                        .map-pair $ fn (k workflow)
                          [] k $ div
                            {}
                              :style $ merge style-workflow-entry
                                {} $ :background-color
                                  if
                                    = (:id workflow) (:focused-id state)
                                    hsl 0 0 100 0.2
                                    hsl 0 0 100 0
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :focused-id (:id workflow)
                            <> $ :name workflow
                  div $ {}
                    :style $ {} (:width 1)
                      :background-color $ hsl 0 0 100 0.2
                      :margin 16
                  div
                    {} $ :style
                      merge ui/flex $ {} (:padding 8)
                    let
                        focused-id $ :focused-id state
                      if
                        and (some? focused-id)
                          some? $ get workflows focused-id
                        let
                            workflow $ get workflows focused-id
                          comp-workflow-detail (>> states :detail) workflow
                        div ({})
                          <> "\"Nothing" $ {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 70
                            :font-size 20
                            :font-weight 100
        |comp-workflow-detail $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-detail (states workflow)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:pop? false) (:edit? false)
                  remove-plugin $ use-confirm (>> states :remove) ({})
                div ({})
                  div
                    {} $ :style (merge ui/row-parted)
                    div
                      {} $ :style ui/row-middle
                      <> "\"Commands" $ {} (:font-size 24) (:font-family ui/font-fancy)
                        :color $ hsl 0 0 70
                        :font-weight 100
                      =< 8 nil
                      <> (:base-dir workflow)
                        {} (:font-family ui/font-code)
                          :color $ hsl 0 0 70
                      =< 40 nil
                      comp-icon :plus
                        &{} :font-size 16 :color (hsl 200 80 60) :cursor :pointer
                        fn (e d!)
                          d! cursor $ assoc state :pop? true
                      let
                          on-close $ fn (d!)
                            d! cursor $ assoc state :pop? false
                        comp-modal
                          {} (:title |Demo)
                            :style $ {} (:width 400)
                            :container-style $ {}
                            :render $ fn (on-close)
                              comp-command-editor (>> states :add-command) nil $ fn (command-draft d! m!)
                                d! :workflow/add-command $ {}
                                  :workflow-id $ :id workflow
                                  :draft command-draft
                                on-close
                          :pop? state
                          , on-close
                    div
                      {} $ :style ui/row-parted
                      comp-icon :edit-2
                        &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                        fn (e d!)
                          d! cursor $ assoc state :edit? true
                      comp-modal
                        {} (:title |Demo)
                          :style $ {} (:width 400)
                          :container-style $ {}
                          :render $ fn (on-close)
                            comp-workflow-editor (>> states :editor) workflow on-close
                        :edit? state
                        fn (d!)
                          d! cursor $ assoc state :edit? false
                      =< 8 nil
                      comp-icon :x
                        &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                        fn (e d!)
                          .show remove-plugin d! $ fn ()
                            d! :workflow/remove $ :id workflow
                  list-> ({})
                    -> (:commands workflow) (.to-list)
                      map $ fn (entry)
                        let-sugar
                              [] k command
                              , entry
                          [] k $ comp-command-row (>> states k) command (:id workflow)
                  .render remove-plugin
        |comp-workflow-editor $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-editor (states base-workflow on-toggle)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    if (some? base-workflow)
                      select-keys base-workflow $ [] :name :base-dir
                      {} (:name |) (:base-dir |./)
                div
                  {} $ :style
                    merge ui/column $ {} (:padding "\"8px")
                  div ({})
                    <> "\"Workflow" $ {} (:font-family ui/font-fancy)
                  =< nil 6
                  div ({})
                    input $ {}
                      :style $ merge ui/input
                        {} $ :width 240
                      :placeholder "|Workflow name"
                      :value $ :name state
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :name (:value e)
                  =< nil 8
                  div ({})
                    input $ {}
                      :style $ merge ui/input
                        {} $ :width 240
                      :placeholder "|Base directory"
                      :value $ :base-dir state
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :base-dir (:value e)
                  =< nil 16
                  div
                    {} $ :style ui/row-parted
                    span $ {}
                    button
                      {} (:style style/button)
                        :on-click $ fn (e d!)
                          let
                              data $ select-keys state ([] :name :base-dir)
                            if (some? base-workflow)
                              d! :workflow/edit $ assoc data :id (:id base-workflow)
                              d! :workflow/create data
                            d! cursor nil
                            on-toggle d!
                      <> "\"Submit"
        |style-workflow-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-workflow-entry $ {} (:cursor :pointer) (:padding "|0 8px") (:min-width 40) (:min-height 20)
              :border-bottom $ str "|1px solid " (hsl 0 0 94 0.1)
              :line-height "\"36px"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.workflow $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> >> list-> span div input button a
            [] respo.comp.space :refer $ [] =<
            [] clojure.string :as string
            [] app.style :as style
            [] app.util :refer $ [] map-val
            [] inflow-popup.comp.popup :refer $ [] comp-popup
            [] feather.core :refer $ [] comp-i comp-icon
            [] app.comp.command :refer $ [] comp-command-editor comp-command-row
            [] respo-alerts.core :refer $ [] use-confirm comp-modal
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= "\"true" js/process.env.cdn)
              :else false
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11014) (:title "\"Termina") (:icon "\"http://cdn.tiye.me/logo/termina.png") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/termina/") (:cdn-folder "\"tiye.me:cdn/termina") (:upload-folder "\"tiye.me:repo/mvc-works/termina/") (:server-folder "\"tiye.me:servers/termina") (:theme "\"#eeeeff") (:storage-key "\"termina") (:storage-file "\"termina.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.manager $ %{} :FileEntry
      :defs $ {}
        |*registry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *registry $ {}
        |create-process! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-process! (op-data dispatch! sid)
              let
                  command $ :command op-data
                  cwd $ :cwd op-data
                  jump? $ :jump? op-data
                  enlarge? $ :enlarge? op-data
                  ; spawn? $ or true (:spawn? op-data)
                  proc $ if (.includes? command "\" | ")
                    cp/exec command $ js-object (:cwd cwd)
                    let
                        parsed $ parse-command command
                      tag-match parsed $ 
                        :command proc-name args envs
                        let
                            p $ cp/spawn (w-js-log proc-name) (w-js-log args)
                              w-js-log $ js-object (:cwd cwd) (:env envs) (:detached true)
                          .!unref p
                          , p
                  pid $ .-pid proc
                swap! *registry assoc pid proc
                dispatch!
                  :: :process/create $ {} (:pid pid) (:command command) (:cwd cwd)
                    :title $ :title op-data
                  , sid
                if jump? $ dispatch!
                  :: :router/change $ {} (:name :process)
                    :params $ {} (:id pid)
                  , sid
                if enlarge? $ dispatch! (:: :session/enlarge pid) sid
                .!on proc "\"exit" $ fn (code _e) (js/console.warn "\"[EXIT]" code _e)
                  dispatch!
                    :: :process/error $ [] pid (str &newline "\"exit: " code)
                    , sid
                  dispatch! (:: :process/finish pid) sid
                  swap! *registry dissoc pid
                .!on proc "\"SIGINT" $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced "\"SIGINT" sig)
                    , sid
                .!on proc "\"SIGTERM" $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced "\"SIGTERM" sig)
                    , sid
                .!on proc "\"SIGKILL" $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced "\"SIGKILL" sig)
                    , sid
                .!on proc "\"error" $ fn (event)
                  dispatch!
                    :: :process/error $ [] pid
                      str-spaced "\"error:" $ str event
                    , sid
                  ; dispatch! (:: :process/finish pid) sid
                  js/console.error "\"[TERMINA] process error" event
                .!on proc "\"disconnect" $ fn (event)
                  dispatch!
                    :: :process/error $ [] pid
                      str-spaced "\"disconntect:" $ str event
                    , sid
                  ; dispatch! (:: :process/finish pid) sid
                  js/console.error "\"[TERMINA] process error" event
                .!on proc "\"uncaughtExceptionMonitor" $ fn (err origin)
                  dispatch!
                    :: :process/error $ [] pid (str err &newline origin)
                    , sid
                .!on proc "\"uncaughtException" $ fn (err origin)
                  dispatch!
                    :: :process/error $ [] pid (str "\"uncaughtException:" err &newline origin)
                    , sid
                .!on proc "\"unhandledRejection" $ fn (err origin)
                  dispatch!
                    :: :process/error $ [] pid (str err &newline origin)
                    , sid
                .!on (.-stdout proc) |data $ fn (data)
                  dispatch!
                    :: :process/stdout $ [] pid
                      if (js/Buffer.isBuffer data) (.!toString data) data
                    , sid
                .!on (.-stderr proc) |data $ fn (data)
                  dispatch!
                    :: :process/stderr $ [] pid
                      if (js/Buffer.isBuffer data) (.!toString data) data
                    , sid
        |kill-process! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn kill-process! (pid dispatch! sid)
              let
                  proc $ get @*registry pid
                if (some? proc)
                  do (eprintln "\"[kill] process" proc) (.!kill proc "\"SIGTERM")
                  do (eprintln "\"[warn] process not found in registry:" pid @*registry) (dispatch! :process/finish pid sid)
        |parse-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn parse-command (command)
              let
                  js-command $ string-argv command
                  env-chunks $ .!filter js-command
                    fn (chunk & _a) (.!test pattern-env chunk)
                  comands-chunks $ .!slice js-command (.-length env-chunks)
                  envs $ let
                      *obj $ js-object (:PATH js/process.env.PATH) (:HOME js/process.env.HOME)
                    .!forEach env-chunks $ fn (chunk & _a)
                      let
                          pair $ .!split chunk "\"="
                        js-set *obj (.-0 pair) (.-1 pair)
                    , *obj
                :: :command (.-0 comands-chunks) (.!slice comands-chunks 1) envs
        |pattern-env $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-env $ do (new js/RegExp "\"^\\w+=")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.manager $ :require ([] |child_process :as cp) ("\"string-argv" :default string-argv)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |command $ %{} :CodeEntry (:doc |)
          :code $ quote
            def command $ {} (:id nil) (:title "\"") (:path "\".") (:code "\"")
        |database $ %{} :CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ do session ({})
              :users $ do user ({})
              :processes $ do process ({})
              :workflows $ do workflow ({})
              :histories $ do history ([])
        |history $ %{} :CodeEntry (:doc |)
          :code $ quote
            def history $ {} (:id nil) (:pid 0) (:started-at 0) (:cwd |) (:command |)
        |page $ %{} :CodeEntry (:doc |)
          :code $ quote
            def page $ {} (:id nil) (:title "\"") (:time nil)
        |process $ %{} :CodeEntry (:doc |)
          :code $ quote
            def process $ {} (:title "\"") (:pid 0)
              :content $ []
              :started-at 0
              :alive? false
              :cwd |
              :command |
        |router $ %{} :CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
        |session $ %{} :CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router
                {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :enlarge-view nil
        |user $ %{} :CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
        |workflow $ %{} :CodeEntry (:doc |)
          :code $ quote
            def workflow $ {} (:id nil) (:name nil) (:base-dir "\"~/")
              :commands $ do command ({})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ merge-local-edn! schema/database storage-file
              fn (found?)
                if found? (println "\"Found local EDN data") (println "\"Found no data")
        |*loop-trigger $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *loop-trigger 0)
        |*proxied-dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *proxied-dispatch! dispatch!)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
        |check-version! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn check-version! () $ let
                pkg $ js/JSON.parse
                  fs/readFileSync $ path/join
                    fileURLToPath $ new js/URL "\"." js/import.meta.url
                    , "\"../package.json"
                version $ .-version pkg
              ->
                latest-version $ .-name pkg
                .!then $ fn (npm-version)
                  if (= npm-version version) (println "\"Running latest version" version)
                    println $ .!yellow chalk (str "\"New version " npm-version "\" available, current one is " version "\" . Please upgrade!\n\nyarn global add termina\n")
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ nanoid
                  op-time $ js/Date.now
                if config/dev? $ println |Dispatch! (str op) sid
                try
                  tag-match op
                      :effect/persist
                      persist-db!
                    (:effect/run d) (create-process! d dispatch! sid)
                    (:effect/kill d) (kill-process! d dispatch! sid)
                    _ $ reset! *reel (reel-reducer @*reel updater op sid op-id op-time)
                  fn (error) (js/console.error error)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              let
                  user-port $ if
                    some? $ .-port js/process.env
                    js/parseInt $ .-port js/process.env
                  port $ or user-port (:port config/site)
                  ui-url $ url-parse "\"http://termina.mvc-works.org/" true
                run-server! port
                set! (-> ui-url .-query .-port) port
                println "\"Server started. Open UI on " $ .!blue chalk (.!toString ui-url)
              render-loop! *loop-trigger
              js/process.on "\"SIGINT" on-exit!
              flipped js/setInterval 60000 $ \ persist-db!
              check-version!
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-exit! (code _) (persist-db!)
              println "|termina exit code is:" $ to-lispy-string code
              js/process.exit
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  -> (:db @*reel)
                    assoc :sessions $ {}
                    update :processes $ fn (processes)
                      -> processes $ map-kv
                        fn (k v)
                          [] k $ assoc v :alive? false
              write-mildly! storage-file file-content
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "\"Code updated.") (clear-twig-caches!) (reset! *proxied-dispatch! dispatch!)
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              js/clearTimeout @*loop-trigger
              render-loop! *loop-trigger
              sync-clients! @*reader-reel
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-loop! (*loop)
              when
                not $ identical? @*reader-reel @*reel
                reset! *reader-reel @*reel
                sync-clients! @*reader-reel
              reset! *loop $ flipped js/setTimeout 200
                fn () $ render-loop! *loop
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! port $ {}
                :on-open $ fn (sid socket)
                  @*proxied-dispatch! (:: :session/connect) sid
                  println "\"New client."
                :on-data $ fn (sid action) (@*proxied-dispatch! action sid)
                :on-close $ fn (sid event) (println "\"Client closed!")
                  @*proxied-dispatch! (:: :session/disconnect) sid
                :on-error $ fn (error) (js/console.error error)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            def storage-file $ path/join js/process.env.HOME "\".config" (:storage-file config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel)
              wss-each! $ fn (sid socket)
                let
                    db $ :db reel
                    records $ :records reel
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "\"Changes for" sid "\":" changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ {} (:kind :patch) (:data changes)
                      swap! *client-caches assoc sid new-store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.server $ :require ([] app.schema :as schema)
            [] app.updater :refer $ [] updater
            [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
            [] "\"node:fs" :as fs
            [] "\"child_process" :as cp
            [] "\"node:path" :as path
            [] "\"latest-version" :default latest-version
            [] "\"chalk" :default chalk
            "\"node:url" :refer $ fileURLToPath
            [] app.config :as config
            [] cumulo-util.file :refer $ [] write-mildly! merge-local-edn!
            [] app.twig.container :refer $ [] twig-container
            [] recollect.diff :refer $ [] diff-twig
            [] recollect.twig :refer $ [] render-twig clear-twig-caches!
            [] ws-edn.server :refer $ [] wss-serve! wss-send! wss-each!
            [] app.manager :refer $ [] create-process! kill-process!
            [] "\"url-parse" :default url-parse
            "\"nanoid" :refer $ nanoid
    |app.style $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button $ merge ui/button
              {} $ :background-color :transparent
        |css-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-button $ {}
              "\"button$0" $ {} (:background-color :transparent)
              "\"button$0:hover" $ {}
                :background-color $ hsl 0 0 100 0.06
        |input $ %{} :CodeEntry (:doc |)
          :code $ quote
            def input $ merge ui/input
              {} $ :width 320
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
              :margin "\"0 8px"
        |text $ %{} :CodeEntry (:doc |)
          :code $ quote
            def text $ {} (:padding "\"0 8px") (:line-height "\"24px") (:min-height 24) (:display :inline-block) (:color :white)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            respo.css :refer $ defstyle
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let-sugar
                  logged-in? $ some? (:user-id session)
                  router $ :router session
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                  ({} workflows processes histories) db
                merge base-data $ if logged-in?
                  {}
                    :user $ twig-user
                      get-in db $ [] :users (:user-id session)
                    :router $ assoc router :data
                      case-default (:name router) ({})
                        :history $ {} (:histories histories)
                        :workflows $ {} (:workflows workflows)
                        :home $ {} (:processes processes) (:workflows workflows)
                          :enlarge-view $ :enlarge-view session
                        :process $ let
                            process-id $ -> router :params :id
                          {}
                            :detail $ get processes process-id
                            :dict $ -> processes
                              .map-kv $ fn (k v)
                                [] k $ dissoc v :content
                        :profile $ twig-members (:sessions db) (:users db)
                    :count $ count (:sessions db)
                    :color $ color/randomColor
                  , nil
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ map-kv
                fn (k session)
                  [] k $ get-in users
                    [] (:user-id session) :name
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            [] "\"randomcolor" :as color
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user) (dissoc user :password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              tag-match op
                  :session/connect
                  session/connect db sid op-id op-time
                (:session/disconnect) (session/disconnect db sid op-id op-time)
                (:session/remove-message d) (session/remove-message db d sid op-id op-time)
                (:session/enlarge d) (session/enlarge db d sid op-id op-time)
                (:user/log-in d) (user/log-in db d sid op-id op-time)
                (:user/sign-up d) (user/sign-up db d sid op-id op-time)
                (:user/log-out d) (user/log-out db d sid op-id op-time)
                (:router/change d) (router/change db d sid op-id op-time)
                (:process/create d) (process/create db d sid op-id op-time)
                (:process/stdout d) (process/stdout db d sid op-id op-time)
                (:process/stderr d) (process/stderr db d sid op-id op-time)
                (:process/error d) (process/error db d sid op-id op-time)
                (:process/clear d) (process/clear db d sid op-id op-time)
                (:process/finish d) (process/finish db d sid op-id op-time)
                (:process/change-command pid next) (process/change-command db pid next sid op-id op-time)
                (:process/remove-dead d) (process/remove-dead db d sid op-id op-time)
                (:process/shorten-content d) (process/shorten-content db d sid op-id op-time)
                (:workflow/create d) (workflow/create-workflow db d sid op-id op-time)
                (:workflow/remove d) (workflow/remove-workflow db d sid op-id op-time)
                (:workflow/add-command d) (workflow/add-command db d sid op-id op-time)
                (:workflow/remove-command d) (workflow/remove-command db d sid op-id op-time)
                (:workflow/edit-command d) (workflow/edit-command db d sid op-id op-time)
                (:workflow/edit d) (workflow/edit-workflow db d sid op-id op-time)
                (:process/clear-history d) (process/clear-history db d sid op-id op-time)
                _ $ do (println "|Unknown op:" op) db
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
            [] app.updater.process :as process
            [] app.updater.workflow :as workflow
    |app.updater.process $ %{} :FileEntry
      :defs $ {}
        |change-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn change-command (db pid next sid op-id op-time)
              assoc-in db ([] :processes pid :command) next
        |clear $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn clear (db op-data sid op-id op-time)
              update db :processes $ fn (processes)
                -> processes $ filter
                  fn (pair)
                    :alive? $ last pair
        |clear-history $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn clear-history (db op-data sid op-id op-time)
              assoc db :histories $ []
        |create $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create (db op-data sid op-id op-time)
              let
                  new-history $ merge schema/history
                    {}
                      :command $ :command op-data
                      :cwd $ :cwd op-data
                      :started-at op-time
                      :id op-id
                      :title $ :title op-data
                -> db
                  assoc-in
                    [] :processes $ :pid op-data
                    merge schema/process op-data $ {} (:started-at op-time) (:alive? true)
                  update :histories $ fn (histories)
                    if (list? histories) (conj histories new-history) ([] new-history)
        |error $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn error (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :error) (:data data)
        |finish $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn finish (db op-data sid op-id op-time)
              assoc-in db ([] :processes op-data :alive?) false
        |remove-dead $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-dead (db op-data sid op-id op-time)
              if
                = false $ get-in db ([] :processes op-data :alive?)
                dissoc-in db $ [] :processes op-data
                , db
        |shorten-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn shorten-content (db op-data sid op-id op-time)
              update-in db ([] :processes op-data)
                fn (process)
                  assoc process :content $ []
        |stderr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn stderr (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :stderr) (:data data)
        |stdout $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn stdout (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :stdout) (:data data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.process $ :require ([] app.schema :as schema)
            [] medley.core :refer $ [] dissoc-in
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn connect (db sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
        |enlarge $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn enlarge (db d sid op-id op-time)
              assoc-in db ([] :sessions sid :enlarge-view) d
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc messages $ :id op-data
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (:users db) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (:name user)
                update-in db ([] :sessions sid)
                  fn (session)
                    if (some? maybe-user)
                      if
                        = (md5 password) (:password maybe-user)
                        assoc session :user-id $ :id maybe-user
                        update session :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "\"Wrong password for " username
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "\"No user named: " username
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    vals $ :users db
                    fn (user)
                      = username $ :name user
                if (some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "\"Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            [] app.util :refer $ [] find-first
            [] |md5 :default md5
    |app.updater.workflow $ %{} :FileEntry
      :defs $ {}
        |add-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-command (db op-data sid op-id op-time)
              let-sugar
                    {} workflow-id draft
                    , op-data
                assoc-in db ([] :workflows workflow-id :commands op-id)
                  merge draft $ {} (:id op-id)
        |create-workflow $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-workflow (db op-data sid op-id op-time)
              let
                  workflow-name $ :name op-data
                  base-dir $ :base-dir op-data
                assoc-in db ([] :workflows op-id)
                  merge schema/workflow $ {} (:id op-id) (:name workflow-name) (:base-dir base-dir)
                    :commands $ {}
                      op-id $ merge schema/command
                        {} (:id op-id) (:title workflow-name) (:path base-dir) (:code "\"echo nothing yet")
        |edit-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn edit-command (db op-data sid op-id op-time)
              let-sugar
                    [] workflow-id command-id changes
                    , op-data
                update-in db ([] :workflows workflow-id :commands command-id)
                  fn (command) (merge command changes)
        |edit-workflow $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn edit-workflow (db op-data sid op-id op-time)
              let
                  new-workflow op-data
                update-in db
                  [] :workflows $ :id new-workflow
                  fn (workflow) (merge workflow new-workflow)
        |remove-command $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-command (db op-data sid op-id op-time)
              let-sugar
                    [] workflow-id command-id
                    , op-data
                update-in db ([] :workflows workflow-id :commands)
                  fn (commands) (dissoc commands command-id)
        |remove-workflow $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-workflow (db op-data sid op-id op-time)
              let
                  workflow-id op-data
                update db :workflows $ fn (workflows) (dissoc workflows workflow-id)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.workflow $ :require ([] app.schema :as schema)
    |app.util $ %{} :FileEntry
      :defs $ {}
        |find-first $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-first (f xs)
              reduce
                fn (_ x)
                  when (f x) (reduced x)
                , nil xs
        |join-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn join-path (xs ys)
              if
                = (first ys) |/
                , ys $ let
                    absolute? $ = (first xs) |/
                    new-path $ join-segments ([])
                      concat (.split xs |/) (.split ys |/)
                  if absolute? (str |/ new-path) new-path
        |join-segments $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn join-segments (acc xs)
              if (empty? xs) (.join-str acc "\"/")
                let
                    cursor $ first xs
                    next-acc $ cond
                        = cursor |.
                        , acc
                      (= cursor |..) (butlast acc)
                      (= cursor |) acc
                      true $ conj acc cursor
                  recur next-acc $ rest xs
        |log-js! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn log-js! (& args)
              apply js/console.log $ map
                fn (x)
                  if (coll? x) (clj->js x) x
                , args
        |map-val $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn map-val (f xs)
              assert
                or (map? xs) (seq? xs)
                , "|map-val deals maps"
              ->> xs $ map
                fn
                    [] k x
                  [] k $ f x
        |map-with-index $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn map-with-index (f xs)
              ->> xs $ map-indexed
                fn (idx x)
                  [] idx $ f x
        |test-join-path! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn test-join-path! ()
              println $ pr-str (join-path | |)
              println $ pr-str (join-path |/ |)
              println $ pr-str (join-path | |/)
              println $ pr-str (join-path |a |b)
              println $ pr-str (join-path |a |../b)
              println $ pr-str (join-path |a |./b)
              println $ pr-str (join-path |a/ |./b)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.util $ :require ([] clojure.string :as string)
