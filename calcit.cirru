
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |recollect/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/ |js-ffi/
      :type-slots $ {}
    :page $ {} (:description |) (:init-fn 'app.client/main!) (:mode :native) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/ |alerts.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    |app.client $ %{} 'FileEntry
      :defs $ {}
        |*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store nil)
          :examples $ []
          :schema $ :: 'Dynamic
        |connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                url-obj $ url-parse js/location.href true
                query $ unsafe-coerce (.-query url-obj) JsObject
                host $ if
                  js-present? $ .-host query
                  unsafe-coerce (.-host query) 'String
                  unsafe-coerce js/location.hostname 'String
                port $ if
                  js-present? $ .-port query
                  unsafe-coerce (.-port query) 'String
                  (&map:get config/site :port)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                println |Dispatch op
              tag-match op
                (:states cursor s)
                  reset! *states $ update-states @*states cursor s
                (:effect/connect) (connect!)
                _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              connect!
              add-watch *store :changes $ fn (s p) (render-app!)
              add-watch *states :changes $ fn (s p) (render-app!)
              js/window.addEventListener |keydown $ fn (event) (on-window-keydown event)
              on-page-touch $ \ if (nil? @*store) (connect!)
          :examples $ []
          :schema $ :: 'Dynamic
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        |on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              case-default (&map:get data :kind) (println "|unknown server data kind:" data)
                :patch $ let
                    changes $
                      &map:get data :data
                  when config/dev? $ js/console.log |Changes changes
                  reset! *store $ patch-twig @*store changes
          :examples $ []
          :schema $ :: 'Dynamic
        |on-window-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-window-keydown (event)
              when
                and
                  = |k $ .-key event
                  .-metaKey event
                case-default
                  &map:get
                    option:unwrap-or (&map:get @*store :router) {}
                    , :name
                  do $ println "|no thing to clear in"
                    &map:get
                      option:unwrap-or (&map:get @*store :router) {}
                      , :name
                  :home $ do
                    dispatch! $ :: :process/clear
                    if-let
                      enlarge-view $ &map:get
                        option:unwrap-or (&map:get @*store :session) {}
                        , :enlarge-view
                      dispatch! $ :: :process/shorten-content enlarge-view
                  :history $ dispatch! (:: :process/clear-history)
                  :process $ dispatch!
                    :: :process/shorten-content $
                      &map:get
                        option:unwrap-or
                          &map:get
                            option:unwrap-or (&map:get @*store :router) {}
                            , :params
                          , {}
                        , :id
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (&map:get @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        |simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (&map:get config/site :storage-key)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in
                    parse-cirru-edn $ unsafe-coerce raw 'String
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
            [] |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    |app.comp.command $ %{} 'FileEntry
      :defs $ {}
        |comp-command-button $ %{} 'CodeEntry (:doc |)
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
                      command $ vals (&map:get workflow :commands)
                      d! :effect/run $ {}
                        :command $
                          &map:get command :code
                        :cwd $ join-path (&map:get workflow :base-dir) (&map:get command :path)
                        :title $
                          &map:get command :title
                <> $
                  &map:get workflow :name
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-command-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-command-editor (states base-command on-submit)
              let
                  cursor $
                    &map:get states :cursor
                  state $ or (&map:get states :data)
                    if (some? base-command)
                      select-keys base-command $ [] :code :path :title
                      {} (:title |) (:code |) (:path |./)
                div
                  {} $ :style
                    merge ui/column $ {} (:padding "|0 16px 16px")
                  div ({})
                    <> |Command $ {} (:font-size 16) (:font-family ui/font-fancy)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $
                      &map:get state :title
                    :placeholder |title...
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :title (&map:get e :value)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $
                      &map:get state :code
                    :placeholder "|Command code"
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :code (&map:get e :value)
                  =< nil 8
                  input $ {}
                    :style $ merge ui/input
                      {} (:width 320) (:font-family ui/font-code)
                    :value $
                      &map:get state :path
                    :placeholder "|Command path"
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :path (&map:get e :value)
                  =< nil 16
                  div
                    {} $ :style ui/row-parted
                    span $ {}
                    button
                      {} (:style style/button)
                        :on-click $ fn (e d!) (on-submit state d!) (d! cursor nil)
                      <> |Submit
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-command-row $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-command-row (states command workflow-id)
              let
                  cursor $
                    &map:get states :cursor
                  state $ either (&map:get states :data)
                    {} $ :pop? false
                  remove-plugin $ use-confirm (>> states :remove) ({})
                div
                  {} $ :style style-command-row
                  div
                    {} $ :style ui/row-parted
                    div
                      {} $ :style ui/row-middle
                      <>
                        or (&map:get command :title) |Task
                        {} $ :font-size 20
                      =< 8 nil
                      comp-icon :play
                        {} (:font-size 14) (:cursor :pointer)
                          :color $ hsl 200 80 70
                        fn (e d! m!)
                          d! :effect/run $ {}
                            :cwd $
                              &map:get command :path
                            :command $
                              &map:get command :code
                            :title $
                              &map:get command :title
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
                              d! :workflow/edit-command $ [] workflow-id (&map:get command :id) command-draft
                              on-close
                        (&map:get state :pop?)
                        fn (d!)
                          d! cursor $ assoc state :pop? false
                      =< 8 nil
                      comp-icon :x
                        &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                        fn (e d!)
                          .show remove-plugin d! $ fn ()
                            d! :workflow/remove-command $ [] workflow-id (&map:get command :id)
                  div
                    {} $ :style
                      merge ui/row-middle $ {} (:font-family ui/font-code)
                    <> (&map:get command :path)
                      {} (:display :inline-block)
                        :background-color $ hsl 0 0 100 0.2
                        :padding "|0 8px"
                    =< 24 nil
                    <> (&map:get command :code)
                      {}
                        :background-color $ hsl 0 0 100 0.2
                        :padding "|0 8px"
                        :display :inline-block
                        :min-width 320
                  .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        |style-command-row $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-command-row $ merge ui/column
              {}
                :border $ str "|1px solid " (hsl 0 0 100 0.3)
                :border-radius |4px
                :padding "|8px 8px"
                :width 600
                :min-width :max-content
                :margin "|16px 8px"
                :color :white
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $
                    &map:get states :data
                  session $
                    &map:get store :session
                  router $
                    &map:get store :router
                  router-data $
                    &map:get router :data
                if (nil? store) (comp-offline)
                  div
                    {} $ :class-name (str-spaced css/global css/fullscreen css/column css-container)
                    comp-navigation (&map:get store :logged-in?) router $
                      &map:get store :count
                    if (&map:get store :logged-in?)
                      let
                          router $
                            &map:get store :router
                          router-data $
                            &map:get router :data
                        case-default (&map:get router :name) (comp-missing router)
                          :profile $ comp-profile (&map:get store :user) router-data
                          :home $ comp-home (>> states :home) router-data
                          :workflows $ comp-workflow-container (>> states :workflows) (&map:get router-data :workflows)
                          :history $ comp-history (&map:get router-data :histories)
                          :process $ comp-process-detail (>> states :detail) (&map:get router-data :detail)
                      comp-login $ >> states :login
                    comp-status-color $
                      &map:get store :color
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      get-in store $ [] :session :messages
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    when dev? $ comp-reel (&map:get store :reel-length) ({})
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge ui/global ui/fullscreen ui/column-dispersive $ {}
                  :background-color $
                    &map:get config/site :theme
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
                  :background-image $ str "|url(" (&map:get config/site :icon) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {} (:class-name css-status)
                :style $ {} (:background-color color)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-container $ {}
              |& $ {}
                :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'Dynamic
        |css-status $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-status $ {}
              |& $ {} (:width 24) (:height 24) (:position :absolute) (:bottom 60) (:left 8) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
        |style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.comp.history $ %{} 'FileEntry
      :defs $ {}
        |comp-history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-history (histories)
              div
                {} $ :class-name css-history-page
                div ({})
                  button $ {} (:class-name css/button) (:inner-text |Clear)
                    :on-click $ fn (e d!) (d! :process/clear-history nil)
                =< nil 16
                if (empty? histories)
                  <> |Empty $ {} (:font-family ui/font-fancy) (:font-weight 100) (:color :white)
                  list->
                    {} $ :style
                      merge ui/flex $ {} (:overflow :auto) (:padding "|16px 0 120px 0")
                    -> histories $ map
                      fn (history)
                        [] (&map:get history :id)
                          div
                            {} $ :class-name (str-spaced css/row-middle css-history)
                            <>
                              str $ -> (&map:get history :started-at) dayjs (.!format "|MM-DD HH:mm:ss")
                              , css-date-text
                            <>
                              or (&map:get history :title) |Task
                              merge style/text $ {} (:min-width 160)
                            <> (&map:get history :command)
                              merge style/text $ {} (:min-width 160)
                            <> (&map:get history :cwd) (merge style/text)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-date-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-date-text $ {}
              |& $ merge style/text
                {} (:font-size 12)
                  :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'Dynamic
        |css-history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-history $ {}
              |& $ {} (:margin |0px)
                :background-color $ hsl 200 40 28
                :padding "|4px 8px"
                :width 960
                :min-width :max-content
                :border-bottom $ str "|1px solid " (hsl 0 0 0 0.2)
                :word-break :break-word
              |&:hover $ {}
                :background-color $ hsl 200 40 32
          :examples $ []
          :schema $ :: 'Dynamic
        |css-history-page $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-history-page $ {}
              |& $ merge ui/flex ui/column
                {} (:padding "|16px 16px") (:font-family ui/font-code) (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.history $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> list-> span div button
            respo.comp.space :refer $ =<
            app.style :as style
            |dayjs :default dayjs
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |app.comp.home $ %{} 'FileEntry
      :defs $ {}
        |comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home (states router-data)
              let
                  cursor $
                    &map:get states :cursor
                  state $ or (&map:get states :data)
                    {} (:query |) (:pop? false)
                div
                  {} $ :class-name (str-spaced css/expand css/column css-home)
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced css/expand css/row)
                    if-let
                      enlarge-view $ get router-data :enlarge-view
                      if-let
                        large-process $ get (&map:get router-data :processes) enlarge-view
                        comp-process-detail (>> states :enlarge) large-process
                    div
                      {} $ :class-name (str-spaced css/expand css/column)
                      div
                        {} (:class-name css/row-parted)
                          :style $ {} (:align-items :center) (:padding "|0 8px")
                        div
                          {} $ :class-name (str-spaced css/flex css/row-middle)
                          input $ {} (:class-name css-filter) (:placeholder |filter...)
                            :value $
                              &map:get state :query
                            :on-input $ fn (e d!)
                              d! cursor $ assoc state :query (&map:get e :value)
                          list->
                            {}
                              :class-name $ str-spaced css/flex css/row
                              :style $ {} (:flex-wrap :wrap)
                            -> (&map:get router-data :workflows) (.to-list)
                              .filter-pair $ fn (k workflow)
                                let
                                    result $ parse-by-letter
                                      .!toLowerCase $
                                        &map:get workflow :name
                                      .!toLowerCase $
                                        &map:get state :query
                                  (&map:get result :matches?)
                              .sort-by $ fn (pair)
                                (&map:get (option:unwrap-or (last pair) {}) :name)
                              .map-pair $ fn (k workflow)
                                [] k $ comp-command-button workflow
                        div
                          {} $ :class-name css/row-middle
                          button $ {}
                            :class-name $ str-spaced css/button style/css-button
                            :inner-text |Run
                            :on-click $ fn (e d!)
                              d! cursor $ assoc state :pop? true
                          comp-modal
                            {} (:title |Demo)
                              :style $ {} (:width 400)
                              :container-style $ {}
                              :render $ fn (on-close)
                                comp-command-editor (>> states :quick-run) nil $ fn (draft d!)
                                  d! :effect/run $ {}
                                    :command $
                                      &map:get draft :code
                                    :cwd $
                                      &map:get draft :path
                                    :title $
                                      &map:get draft :title
                                  on-close d!
                            (&map:get state :pop?)
                            fn (d!)
                              d! cursor $ assoc state :pop? false
                          =< 8 nil
                          button $ {}
                            :class-name $ str-spaced css/button style/css-button
                            :inner-text "|Kill all"
                            :on-click $ fn (e d!)
                              &doseq
                                pid $ keys (&map:get router-data :processes)
                                d! :effect/kill pid
                          =< 8 nil
                          a
                            {} (:class-name css/link)
                              :on-click $ fn (e d!) (d! :process/clear nil)
                            <> |Clear
                      list->
                        {} $ :class-name (str-spaced css/flex css-process-list)
                        -> (&map:get router-data :processes) (.to-list)
                          filter $ fn (x)
                            not= (first x) (get router-data :enlarge-view)
                          .sort $ fn (x y)
                            if
                              and
                                  &map:get
                                    option:unwrap-or (last y) {}
                                    , :alive?
                                (&map:get (option:unwrap-or (last x) {}) :alive?)
                              -
                                  &map:get
                                    option:unwrap-or (last x) {}
                                    , :started-at
                                (&map:get (option:unwrap-or (last y) {}) :started-at)
                              -
                                  &map:get
                                    option:unwrap-or (last y) {}
                                    , :started-at
                                (&map:get (option:unwrap-or (last x) {}) :started-at)
                          .sort-by $ fn (pair)
                            not $
                              &map:get
                                option:unwrap-or (last pair) {}
                                , :alive?
                          .map-pair $ fn (pid process)
                            [] pid $ comp-process process
          :examples $ []
          :schema $ :: 'Dynamic
        |css-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-filter $ {}
              |& $ {} (:min-width 60) (:width 60) (:background-color :transparent)
                :color $ hsl 0 0 100 0.8
                :border-width "|0 0 1px 0"
                :border-bottom $ str "|1px solid " (hsl 0 0 100 0.5)
                :border-radius 0
                :outline :none
                :line-height |28px
                :font-size 14
                :font-family ui/font-normal
                :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        |css-home $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-home $ {}
              |& $ merge ui/flex ui/column
                {} (:padding "|8px 0px") (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-process-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-process-list $ {}
              |& $ {} (:overflow :auto) (:flex-wrap :wrap) (:padding-bottom 120) (:align-items :flex-start) (:gap |8px) (:grid-template-columns "|repeat(auto-fit, minmax(560px, 1fr))") (:grid-auto-flow :dense) (:display :grid) (:padding-bottom 120) (:margin "|0 8px") (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.comp.login $ %{} 'FileEntry
      :defs $ {}
        |comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $
                    &map:get states :cursor
                  state $ or (&map:get states :data) initial-state
                div
                  {} $ :style (merge ui/flex ui/center)
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $
                            &map:get state :username
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (&map:get e :value)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $
                            &map:get state :password
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (&map:get e :value)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge style/link
                        :on-click $ on-submit (&map:get state :username) (&map:get state :password) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge style/link
                        :on-click $ on-submit (&map:get state :username) (&map:get state :password) false
          :examples $ []
          :schema $ :: 'Dynamic
        |initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        |on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (&map:get config/site :storage-key)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] app.config :as config
    |app.comp.missing $ %{} 'FileEntry
      :defs $ {}
        |comp-missing $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-missing (router)
              div ({}) (<> "|Page missing")
                div
                  {} $ :style
                    {} $ :font-family ui/font-code
                  <> router
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.missing $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> span div
    |app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        |comp-navigation $ %{} 'CodeEntry (:doc |)
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
          :examples $ []
          :schema $ :: 'Dynamic
        |css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-nav $ {}
              |& $ merge ui/row-center
                {} (:height 32) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                  :font-family ui/font-fancy
                  :background-color $ hsl 0 0 0 0.04
          :examples $ []
          :schema $ :: 'Dynamic
        |render-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-entry (router router-name title)
              div
                {}
                  :style $ merge style-logo
                    if
                      = router-name $
                        &map:get router :name
                      {} $ :color :white
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name router-name)
                <> title
          :examples $ []
          :schema $ :: 'Dynamic
        |style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-logo $ {} (:cursor :pointer)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> >> span div
            app.config :as config
            respo.css :refer $ defstyle
    |app.comp.process $ %{} 'FileEntry
      :defs $ {}
        |comp-process $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-process (process)
              div
                {} $ :class-name css-process
                div
                  {} (:class-name css-title-bar)
                    :style $ if (&map:get process :alive?)
                      {} $ :background-color (hsl 50 100 60)
                  div
                    {} $ :class-name css/row-middle
                    <>
                      or (&map:get process :title) |Task
                      merge style/text $ {} (:color :black)
                  div
                    {} $ :class-name css/row-middle
                    button $ {} (:class-name css/button)
                      :style $ {}
                        :background $ hsl 0 0 0 0.1
                        :color :white
                      :on-click $ fn (e d!)
                        d! $ :: :session/enlarge (&map:get process :pid)
                      :inner-text |Enlarge
                    ; =< 8 nil
                    ; a $ {} (:class-name css/link)
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :process)
                          :params $ {}
                            :id $
                              &map:get process :pid
                      :inner-text |View
                    if (&map:get process :alive?)
                      a
                        {} (:class-name css-link-kill)
                          :on-click $ fn (e d!)
                            d! :effect/kill $
                              &map:get process :pid
                        <> |Kill
                      a $ {} (:style style/link) (:inner-text |Redo)
                        :on-click $ fn (e d!)
                          d! :effect/run $ {}
                            :cwd $
                              &map:get process :cwd
                            :command $
                              &map:get process :command
                            :title $
                              &map:get process :title
                          d! :process/remove-dead $
                            &map:get process :pid
                div
                  {} $ :class-name (str-spaced css/expand css-process-log)
                  <> (&map:get process :command) (merge style/text)
                  =< 8 nil
                  <> (&map:get process :cwd)
                    merge style/text $ {}
                      :color $ hsl 0 0 60
                if-not
                  empty? $
                    &map:get process :content
                  list->
                    {} $ :class-name css-content-list
                    -> (&map:get process :content) (.to-list) (take-last 4)
                      .map-indexed $ fn (idx chunk)
                        [] idx $ let
                            urls $ to-calcit-data
                              .!match (&map:get chunk :data) url-pattern
                          div
                            {} $ :style
                              {} (:margin-top 2) (:display :block)
                                :background-color $ hsl 0 0 0 0.5
                            if-not (empty? urls)
                              list-> ({})
                                -> urls $ map
                                  fn (url)
                                    [] url $ a
                                      {} (:inner-text url) (:target |_blank) (:href url)
                                        :style $ {}
                                          :color $ hsl 200 80 70
                                          :margin "|0 8px"
                            <> (&map:get chunk :data)
                              {}
                                :color $ case-default (&map:get chunk :type) (hsl 60 0 72)
                                  :stderr $ hsl 60 80 36
                                  :error $ hsl 0 80 50
                                :padding 8
                                :display :block
                                :white-space :pre-line
          :examples $ []
          :schema $ :: 'Dynamic
        |css-content-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-content-list $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height |1.5em) (:max-height 240) (:overflow :auto) (:border-radius |4px)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-link-kill $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-link-kill $ {}
              |& $ merge style/link
                {} (:color :red) (:border-color :red)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-process $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-process $ {}
              |& $ merge
                {} (:font-family ui/font-code) (:border-radius |4px) (:display :inline-block) (:vertical-align :top)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-process-log $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-process-log $ {}
              |& $ merge ui/row-middle
                {}
                  :background-color $ hsl 0 0 0 0.5
                  :font-size 10
          :examples $ []
          :schema $ :: 'Dynamic
        |css-title-bar $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-title-bar $ {}
              |& $ merge ui/row-parted
                {}
                  :background-color $ hsl 0 0 100 0.4
                  :color :black
                  :padding "|4px 4px"
                  :border-radius |4px
          :examples $ []
          :schema $ :: 'Dynamic
        |url-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def url-pattern $ new js/RegExp |https?://\S+ |g
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.comp.process-detail $ %{} 'FileEntry
      :defs $ {}
        |comp-process-detail $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-process-detail (states process)
              let
                  cursor $
                    &map:get states :cursor
                  state $ either (&map:get states :data)
                    {} (:filter |) (:filter? true) (:wrap? true) (:all-log? false) (:hide-thread-info? false)
                  command-plugin $ use-prompt (>> states :command)
                    {} (:text "|change command")
                      :initial $
                        &map:get process :command
                div
                  {} (:class-name css-process)
                    :style $ {} (:flex 2)
                  div
                    {} $ :class-name css/row-parted
                    div
                      {} $ :style
                        merge ui/row-middle $ {} (:gap 4)
                      input $ {} (:type |checkbox)
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $
                          &map:get state :filter?
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :filter?
                            not $
                              &map:get state :filter?
                      if (&map:get state :filter?)
                        input $ {} (:class-name css-filter)
                          :value $
                            &map:get state :filter
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :filter (&map:get e :value)
                          :placeholder |filter...
                        <> |Filter...
                      input $ {} (:type |checkbox)
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $
                          &map:get state :all-log?
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :all-log?
                            not $
                              &map:get state :all-log?
                      <> "|All log?"
                      comp-icon :arrow-down
                        {} (:font-size 14) (:class-name css-down-icon)
                          :color $ hsl 0 0 80
                        , on-scroll-down!
                      if-not
                        empty? $
                          &map:get process :content
                        a
                          {}
                            :on-click $ fn (e d!)
                              d! :process/shorten-content $
                                &map:get process :pid
                            :style style/link
                          <> |Clear
                      =< 8 nil
                      input $ {} (:type |checkbox)
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $
                          &map:get state :hide-thread-info?
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :hide-thread-info?
                            not $
                              &map:get state :hide-thread-info?
                      <> |HideThread?
                      input $ {} (:type |checkbox)
                        :style $ {} (:cursor :pointer) (:opacity 0.8)
                        :checked $
                          &map:get state :wrap?
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :wrap?
                            not $
                              &map:get state :wrap?
                      <> |Wrap?
                    div
                      {} $ :class-name css-toolbar
                      span $ {}
                        :inner-text $ or (&map:get process :title) |Task
                        :class-name css/font-fancy
                        :style $ merge style/text
                          {} $ :padding "|0 8px"
                          if (&map:get process :alive?)
                            {} (:color :black) (:border-radius |4px)
                              :background-color $ hsl 60 100 60
                        :title $ str (&map:get process :cwd) &newline (&map:get process :command)
                        :on-click $ fn (e d!)
                          .show command-plugin d! $ fn (text)
                            d! $ :: :process/change-command (&map:get process :pid) text
                      ; =< 16 nil
                      ; <> (&map:get process :command) style/text
                      ; =< 16 nil
                      ; <> $ merge style/text
                        {} (:font-size 12)
                          :color $ hsl 0 0 70
                      ; =< 16 nil
                      ; <> (&map:get process :pid) style/text
                      =< 8 nil
                      if (&map:get process :alive?)
                        a
                          {} (:class-name css/link)
                            :style $ {} (:color :red) (:border-color :red)
                            :on-click $ fn (e d!)
                              d! :effect/kill $
                                &map:get process :pid
                            :title $
                              &map:get process :command
                          <> |Kill
                        div ({})
                          a $ {} (:class-name css/link) (:inner-text |Redo)
                            :title $
                              &map:get process :command
                            :on-click $ fn (e d!)
                              d! :effect/run $ {}
                                :cwd $
                                  &map:get process :cwd
                                :command $
                                  &map:get process :command
                                :title $
                                  &map:get process :title
                                :enlarge? true
                              d! :process/remove-dead $
                                &map:get process :pid
                          =< 8 nil
                          a $ {} (:class-name css/link) (:inner-text |Drop)
                            :on-click $ fn (e d!)
                              d! :router/change $ {} (:name :home)
                              d! :process/remove-dead $
                                &map:get process :pid
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced |scroll-area css-logs-list)
                    if (some? process)
                      list->
                        {} $ :style
                          {} $ :white-space
                            if (&map:get state :wrap?) |pre-wrap |pre
                        -> (&map:get process :content)
                          filter $ fn (chunk)
                            if
                              or
                                not $
                                  &map:get state :filter?
                                blank? $
                                  &map:get state :filter
                              , true $ .includes? (&map:get chunk :data) (&map:get state :filter)
                          take-last $ if (&map:get state :all-log?) 2000 60
                          map-indexed $ fn (idx chunk)
                            [] (&map:get chunk :data)
                              span $ {} (:class-name css-log)
                                :style $ merge
                                  if
                                    = :stderr $
                                      &map:get chunk :type
                                    {} $ :color :red
                                :inner-text $ do
                                  if (&map:get state :hide-thread-info?)
                                    hide-thread-info $
                                      &map:get chunk :data
                                    (&map:get chunk :data)
                                  ; .!replace (&map:get chunk :data) &newline $ str &newline &newline
                    =< nil 200
                  .render command-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        |css-down-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-down-icon $ {}
              |& $ {} (:opacity 0.8) (:cursor :pointer)
              |&:hover $ {} (:opacity 1)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-filter $ {}
              |& $ merge ui/input
                {}
                  :color $ hsl 0 0 100
                  :background-color $ hsl 0 0 100 0
                  :border-color $ hsl 0 0 100 0.4
          :examples $ []
          :schema $ :: 'Dynamic
        |css-log $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-log $ {}
              |& $ {} (:font-size 12) (:margin |0) (:font-family ui/font-code) (:line-height |20px)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-logs-list $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-logs-list $ {}
              |& $ merge ui/flex
                {} (:overflow :auto)
                  :border $ str "|1px solid " (hsl 0 0 100 0.3)
                  :padding 8
                  :background-color $ hsl 0 0 0 0.5
                  :overflow :auto
                  :word-break :break-all
                  :line-height 1.4
          :examples $ []
          :schema $ :: 'Dynamic
        |css-process $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-process $ {}
              |& $ merge ui/flex ui/column
                {} (; :padding "|8px 16px") (:overflow :auto) (:color |#aaa)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-toolbar $ {}
              |& $ merge ui/row-middle
                {} $ :font-family ui/font-code
          :examples $ []
          :schema $ :: 'Dynamic
        |hide-thread-info $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn hide-thread-info (text) (.!replace text thread-info-pattern |)
          :examples $ []
          :schema $ :: 'Dynamic
        |on-scroll-down! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-scroll-down! (e d!)
              let
                  el $ js/document.querySelector |.scroll-area
                when (js-present? el)
                  set! (.-scrollTop el) (.-scrollHeight el)
          :examples $ []
          :schema $ :: 'Dynamic
        |thread-info-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def thread-info-pattern $ new js/RegExp "|^[\\d\\s\\:\\-\\.\\+]+\\s+(\\[([\\w\\d\\s\\:\\,])+\\]\\s?)+"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        |comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (&map:get user :name)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> members (.to-list)
                      .map-pair $ fn (k username)
                        [] k $ div
                          {} $ :style
                            {} (:padding "|0 8px")
                              :border $ str "|1px solid " (hsl 0 0 80)
                              :border-radius |16px
                              :margin "|0 4px"
                          <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge style/button
                      :on-click $ fn (e d!)
                        .replace js/location $ str js/location.origin |?time= (.now js/Date)
                    <> |Refresh
                  =< 8 nil
                  button
                    {}
                      :style $ merge style/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                        js/localStorage.removeItem $
                          &map:get config/site :storage-key
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            [] app.style :as style
    |app.comp.workflow $ %{} 'FileEntry
      :defs $ {}
        |comp-workflow-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-container (states workflows)
              let
                  cursor $
                    &map:get states :cursor
                  state $ or (&map:get states :data)
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
                        (&map:get state :pop?)
                        fn (d!)
                          d! cursor $ assoc state :pop? false
                    =< nil 8
                    list-> ({})
                      -> workflows (.to-list)
                        .sort-by $ fn (pair)
                          (&map:get (option:unwrap-or (last pair) {}) :name)
                        .map-pair $ fn (k workflow)
                          [] k $ div
                            {}
                              :style $ merge style-workflow-entry
                                {} $ :background-color
                                  if
                                    = (&map:get workflow :id) (&map:get state :focused-id)
                                    hsl 0 0 100 0.2
                                    hsl 0 0 100 0
                              :on-click $ fn (e d!)
                                d! cursor $ assoc state :focused-id (&map:get workflow :id)
                            <> $
                              &map:get workflow :name
                  div $ {}
                    :style $ {} (:width 1)
                      :background-color $ hsl 0 0 100 0.2
                      :margin 16
                  div
                    {} $ :style
                      merge ui/flex $ {} (:padding 8)
                    let
                        focused-id $
                          &map:get state :focused-id
                      if
                        and (option:some? focused-id)
                          option:some? $ get workflows focused-id
                        let
                            workflow $ get workflows focused-id
                          comp-workflow-detail (>> states :detail) workflow
                        div ({})
                          <> |Nothing $ {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 70
                            :font-size 20
                            :font-weight 100
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-workflow-detail $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-detail (states workflow)
              let
                  cursor $
                    &map:get states :cursor
                  state $ either (&map:get states :data)
                    {} (:pop? false) (:edit? false)
                  remove-plugin $ use-confirm (>> states :remove) ({})
                div ({})
                  div
                    {} $ :style (merge ui/row-parted)
                    div
                      {} $ :style ui/row-middle
                      <> |Commands $ {} (:font-size 24) (:font-family ui/font-fancy)
                        :color $ hsl 0 0 70
                        :font-weight 100
                      =< 8 nil
                      <> (&map:get workflow :base-dir)
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
                                  :workflow-id $
                                    &map:get workflow :id
                                  :draft command-draft
                                on-close
                          (&map:get state :pop?)
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
                        (&map:get state :edit?)
                        fn (d!)
                          d! cursor $ assoc state :edit? false
                      =< 8 nil
                      comp-icon :x
                        &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                        fn (e d!)
                          .show remove-plugin d! $ fn ()
                            d! :workflow/remove $
                              &map:get workflow :id
                  list-> ({})
                    -> (&map:get workflow :commands) (.to-list)
                      map $ fn (entry)
                        let-sugar
                              [] k command
                              , entry
                          [] k $ comp-command-row (>> states k) command (&map:get workflow :id)
                  .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-workflow-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-workflow-editor (states base-workflow on-toggle)
              let
                  cursor $
                    &map:get states :cursor
                  state $ or (&map:get states :data)
                    if (some? base-workflow)
                      select-keys base-workflow $ [] :name :base-dir
                      {} (:name |) (:base-dir |./)
                div
                  {} $ :style
                    merge ui/column $ {} (:padding |8px)
                  div ({})
                    <> |Workflow $ {} (:font-family ui/font-fancy)
                  =< nil 6
                  div ({})
                    input $ {}
                      :style $ merge ui/input
                        {} $ :width 240
                      :placeholder "|Workflow name"
                      :value $
                        &map:get state :name
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :name (&map:get e :value)
                  =< nil 8
                  div ({})
                    input $ {}
                      :style $ merge ui/input
                        {} $ :width 240
                      :placeholder "|Base directory"
                      :value $
                        &map:get state :base-dir
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :base-dir (&map:get e :value)
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
                              d! :workflow/edit $ assoc data :id (&map:get base-workflow :id)
                              d! :workflow/create data
                            d! cursor nil
                            on-toggle d!
                      <> |Submit
          :examples $ []
          :schema $ :: 'Dynamic
        |style-workflow-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-workflow-entry $ {} (:cursor :pointer) (:padding "|0 8px") (:min-width 40) (:min-height 20)
              :border-bottom $ str "|1px solid " (hsl 0 0 94 0.1)
              :line-height |36px
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    |app.config $ %{} 'FileEntry
      :defs $ {}
        |cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11014) (:title |Termina) (:icon |http://cdn.tiye.me/logo/termina.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/termina/) (:cdn-folder |tiye.me:cdn/termina) (:upload-folder |tiye.me:repo/mvc-works/termina/) (:server-folder |tiye.me:servers/termina) (:theme |#eeeeff) (:storage-key |termina) (:storage-file |termina.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.manager $ %{} 'FileEntry
      :defs $ {}
        |*registry $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *registry $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |create-process! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-process! (op-data dispatch! sid)
              let
                  command $
                    &map:get op-data :command
                  cwd $
                    &map:get op-data :cwd
                  jump? $
                    &map:get op-data :jump?
                  enlarge? $
                    &map:get op-data :enlarge?
                  ; spawn? $ or true (&map:get op-data :spawn?)
                  proc $ if (.includes? command "| | ")
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
                    :title $
                      &map:get op-data :title
                  , sid
                if jump? $ dispatch!
                  :: :router/change $ {} (:name :process)
                    :params $ {} (:id pid)
                  , sid
                if enlarge? $ dispatch! (:: :session/enlarge pid) sid
                .!on proc |exit $ fn (code _e) (js/console.warn |[EXIT] code _e)
                  dispatch!
                    :: :process/error $ [] pid (str &newline "|exit: " code)
                    , sid
                  dispatch! (:: :process/finish pid) sid
                  swap! *registry dissoc pid
                .!on proc |SIGINT $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced |SIGINT sig)
                    , sid
                .!on proc |SIGTERM $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced |SIGTERM sig)
                    , sid
                .!on proc |SIGKILL $ fn (sig)
                  dispatch!
                    :: :process/error $ [] pid (str-spaced |SIGKILL sig)
                    , sid
                .!on proc |error $ fn (event)
                  dispatch!
                    :: :process/error $ [] pid
                      str-spaced |error: $ str event
                    , sid
                  ; dispatch! (:: :process/finish pid) sid
                  js/console.error "|[TERMINA] process error" event
                .!on proc |disconnect $ fn (event)
                  dispatch!
                    :: :process/error $ [] pid
                      str-spaced |disconntect: $ str event
                    , sid
                  ; dispatch! (:: :process/finish pid) sid
                  js/console.error "|[TERMINA] process error" event
                .!on proc |uncaughtExceptionMonitor $ fn (err origin)
                  dispatch!
                    :: :process/error $ [] pid (str err &newline origin)
                    , sid
                .!on proc |uncaughtException $ fn (err origin)
                  dispatch!
                    :: :process/error $ [] pid (str |uncaughtException: err &newline origin)
                    , sid
                .!on proc |unhandledRejection $ fn (err origin)
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
          :examples $ []
          :schema $ :: 'Dynamic
        |kill-process! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn kill-process! (pid dispatch! sid)
              let
                  proc $ get @*registry pid
                if (some? proc)
                  do (eprintln "|[kill] process" proc) (.!kill proc |SIGTERM)
                  do (eprintln "|[warn] process not found in registry:" pid @*registry) (dispatch! :process/finish pid sid)
          :examples $ []
          :schema $ :: 'Dynamic
        |parse-command $ %{} 'CodeEntry (:doc |)
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
                          pair $ .!split chunk |=
                        js-set *obj (.-0 pair) (.-1 pair)
                    , *obj
                :: :command (.-0 comands-chunks) (.!slice comands-chunks 1) envs
          :examples $ []
          :schema $ :: 'Dynamic
        |pattern-env $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-env $ do (new js/RegExp |^\w+=)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.manager $ :require ([] |child_process :as cp) (|string-argv :default string-argv)
    |app.schema $ %{} 'FileEntry
      :defs $ {}
        |command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def command $ {} (:id nil) (:title |) (:path |.) (:code |)
          :examples $ []
          :schema $ :: 'Dynamic
        |database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ do session ({})
              :users $ do user ({})
              :processes $ do process ({})
              :workflows $ do workflow ({})
              :histories $ do history ([])
          :examples $ []
          :schema $ :: 'Dynamic
        |history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def history $ {} (:id nil) (:pid 0) (:started-at 0) (:cwd |) (:command |)
          :examples $ []
          :schema $ :: 'Dynamic
        |page $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def page $ {} (:id nil) (:title |) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        |process $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def process $ {} (:title |) (:pid 0)
              :content $ []
              :started-at 0
              :alive? false
              :cwd |
              :command |
          :examples $ []
          :schema $ :: 'Dynamic
        |router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        |session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router
                {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :enlarge-view nil
          :examples $ []
          :schema $ :: 'Dynamic
        |user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Dynamic
        |workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def workflow $ {} (:id nil) (:name nil) (:base-dir |~/)
              :commands $ do command ({})
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.server $ %{} 'FileEntry
      :defs $ {}
        |*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ merge-local-edn! schema/database storage-file
              fn (found?)
                if found? (println "|Found local EDN data") (println "|Found no data")
          :examples $ []
          :schema $ :: 'Dynamic
        |*loop-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *loop-trigger 0)
          :examples $ []
          :schema $ :: 'Dynamic
        |*proxied-dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *proxied-dispatch! dispatch!)
          :examples $ []
          :schema $ :: 'Dynamic
        |*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Dynamic
        |*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Dynamic
        |check-version! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn check-version! () $ let
                pkg $ js/JSON.parse
                  fs/readFileSync $ path/join
                    fileURLToPath $ new js/URL |. js/import.meta.url
                    , |../package.json
                version $ .-version pkg
              ->
                latest-version $ .-name pkg
                .!then $ fn (npm-version)
                  if (= npm-version version) (println "|Running latest version" version)
                    println $ .!yellow chalk (str "|New version " npm-version "| available, current one is " version "| . Please upgrade!\n\nyarn global add termina\n")
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ nanoid
                  op-time $ js/Date.now
                if config/dev? $ println |Dispatch! (str op) sid
                try
                  tag-match op
                    (:effect/persist) (persist-db!)
                    (:effect/run d) (create-process! d dispatch! sid)
                    (:effect/kill d) (kill-process! d dispatch! sid)
                    _ $ reset! *reel (reel-reducer @*reel updater op sid op-id op-time)
                  fn (error) (js/console.error error)
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  user-port $ if
                    some? $ .-port js/process.env
                    js/parseInt $ .-port js/process.env
                  port $ or user-port (&map:get config/site :port)
                  ui-url $ url-parse |http://termina.mvc-works.org/ true
                run-server! port
                set! (-> ui-url .-query .-port) port
                println "|Server started. Open UI on " $ .!blue chalk (.!toString ui-url)
              render-loop! *loop-trigger
              js/process.on |SIGINT on-exit!
              flipped js/setInterval 60000 $ \ persist-db!
              check-version!
          :examples $ []
          :schema $ :: 'Dynamic
        |on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! (code _) (persist-db!)
              println "|termina exit code is:" $ to-lispy-string code
              js/process.exit
          :examples $ []
          :schema $ :: 'Dynamic
        |persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  -> (&map:get @*reel :db)
                    assoc :sessions $ {}
                    update :processes $ fn (processes)
                      -> processes $ map-kv
                        fn (k v)
                          [] k $ assoc v :alive? false
              write-mildly! storage-file file-content
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated.") (clear-twig-caches!) (reset! *proxied-dispatch! dispatch!)
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              js/clearTimeout @*loop-trigger
              render-loop! *loop-trigger
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        |render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! (*loop)
              when
                not $ identical? @*reader-reel @*reel
                reset! *reader-reel @*reel
                sync-clients! @*reader-reel
              reset! *loop $ flipped js/setTimeout 200
                fn () $ render-loop! *loop
          :examples $ []
          :schema $ :: 'Dynamic
        |run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! port $ {}
                :on-open $ fn (sid socket)
                  @*proxied-dispatch! (:: :session/connect) sid
                  println "|New client."
                :on-data $ fn (sid action) (@*proxied-dispatch! action sid)
                :on-close $ fn (sid event) (println "|Client closed!")
                  @*proxied-dispatch! (:: :session/disconnect) sid
                :on-error $ fn (error) (js/console.error error)
          :examples $ []
          :schema $ :: 'Dynamic
        |storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ path/join js/process.env.HOME |.config (&map:get config/site :storage-file)
          :examples $ []
          :schema $ :: 'Dynamic
        |sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel)
              wss-each! $ fn (sid socket)
                let
                    db $
                      &map:get reel :db
                    records $
                      &map:get reel :records
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ {} (:kind :patch) (:data changes)
                      swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require ([] app.schema :as schema)
            [] app.updater :refer $ [] updater
            [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
            [] |node:fs :as fs
            [] |child_process :as cp
            [] |node:path :as path
            [] |latest-version :default latest-version
            [] |chalk :default chalk
            |node:url :refer $ fileURLToPath
            [] app.config :as config
            [] cumulo-util.file :refer $ [] write-mildly! merge-local-edn!
            [] app.twig.container :refer $ [] twig-container
            [] recollect.diff :refer $ [] diff-twig
            [] recollect.twig :refer $ [] render-twig clear-twig-caches!
            [] ws-edn.server :refer $ [] wss-serve! wss-send! wss-each!
            [] app.manager :refer $ [] create-process! kill-process!
            [] |url-parse :default url-parse
            |nanoid :refer $ nanoid
    |app.style $ %{} 'FileEntry
      :defs $ {}
        |button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def button $ merge ui/button
              {} $ :background-color :transparent
          :examples $ []
          :schema $ :: 'Dynamic
        |css-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-button $ {}
              |button$0 $ {} (:background-color :transparent)
              |button$0:hover $ {}
                :background-color $ hsl 0 0 100 0.06
          :examples $ []
          :schema $ :: 'Dynamic
        |input $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def input $ merge ui/input
              {} $ :width 320
          :examples $ []
          :schema $ :: 'Dynamic
        |link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
              :margin "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        |text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def text $ {} (:padding "|0 8px") (:line-height |24px) (:min-height 24) (:display :inline-block) (:color :white)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            respo.css :refer $ defstyle
    |app.twig.container $ %{} 'FileEntry
      :defs $ {}
        |twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let-sugar
                  logged-in? $ some? (&map:get session :user-id)
                  router $
                    &map:get session :router
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                  ({} workflows processes histories) db
                merge base-data $ if logged-in?
                  {}
                    :user $ twig-user
                      get-in db $ [] :users (&map:get session :user-id)
                    :router $ assoc router :data
                      case-default (&map:get router :name) ({})
                        :history $ {} (:histories histories)
                        :workflows $ {} (:workflows workflows)
                        :home $ {} (:processes processes) (:workflows workflows)
                          :enlarge-view $
                            &map:get session :enlarge-view
                        :process $ let
                            process-id $ -> router :params :id
                          {}
                            :detail $ get processes process-id
                            :dict $ -> processes
                              .map-kv $ fn (k v)
                                [] k $ dissoc v :content
                        :profile $ twig-members (&map:get db :sessions) (&map:get db :users)
                    :count $ count (&map:get db :sessions)
                    :color $ color/randomColor
                  , nil
          :examples $ []
          :schema $ :: 'Dynamic
        |twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ map-kv
                fn (k session)
                  [] k $ get-in users
                    [] (&map:get session :user-id) :name
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            [] |randomcolor :as color
    |app.twig.user $ %{} 'FileEntry
      :defs $ {}
        |twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    |app.updater $ %{} 'FileEntry
      :defs $ {}
        |updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              tag-match op
                (:session/connect) (session/connect db sid op-id op-time)
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
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
            [] app.updater.process :as process
            [] app.updater.workflow :as workflow
    |app.updater.process $ %{} 'FileEntry
      :defs $ {}
        |change-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change-command (db pid next sid op-id op-time)
              assoc-in db ([] :processes pid :command) next
          :examples $ []
          :schema $ :: 'Dynamic
        |clear $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn clear (db op-data sid op-id op-time)
              update db :processes $ fn (processes)
                -> processes $ filter
                  fn (pair)
                    (&map:get (option:unwrap-or (last pair) {}) :alive?)
          :examples $ []
          :schema $ :: 'Dynamic
        |clear-history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn clear-history (db op-data sid op-id op-time)
              assoc db :histories $ []
          :examples $ []
          :schema $ :: 'Dynamic
        |create $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create (db op-data sid op-id op-time)
              let
                  new-history $ merge schema/history
                    {}
                      :command $
                        &map:get op-data :command
                      :cwd $
                        &map:get op-data :cwd
                      :started-at op-time
                      :id op-id
                      :title $
                        &map:get op-data :title
                -> db
                  assoc-in
                    [] :processes $
                      &map:get op-data :pid
                    merge schema/process op-data $ {} (:started-at op-time) (:alive? true)
                  update :histories $ fn (histories)
                    if (list? histories) (conj histories new-history) ([] new-history)
          :examples $ []
          :schema $ :: 'Dynamic
        |error $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn error (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :error) (:data data)
          :examples $ []
          :schema $ :: 'Dynamic
        |finish $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn finish (db op-data sid op-id op-time)
              assoc-in db ([] :processes op-data :alive?) false
          :examples $ []
          :schema $ :: 'Dynamic
        |remove-dead $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-dead (db op-data sid op-id op-time)
              if
                = false $ get-in db ([] :processes op-data :alive?)
                dissoc-in db $ [] :processes op-data
                , db
          :examples $ []
          :schema $ :: 'Dynamic
        |shorten-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn shorten-content (db op-data sid op-id op-time)
              update-in db ([] :processes op-data)
                fn (process)
                  assoc process :content $ []
          :examples $ []
          :schema $ :: 'Dynamic
        |stderr $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn stderr (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :stderr) (:data data)
          :examples $ []
          :schema $ :: 'Dynamic
        |stdout $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn stdout (db op-data sid op-id op-time)
              let-sugar
                    [] pid data
                    , op-data
                update-in db ([] :processes pid :content)
                  fn (content)
                    conj content $ {} (:type :stdout) (:data data)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.process $ :require ([] app.schema :as schema)
            [] medley.core :refer $ [] dissoc-in
    |app.updater.router $ %{} 'FileEntry
      :defs $ {}
        |change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    |app.updater.session $ %{} 'FileEntry
      :defs $ {}
        |connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
          :schema $ :: 'Dynamic
        |disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        |enlarge $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn enlarge (db d sid op-id op-time)
              assoc-in db ([] :sessions sid :enlarge-view) d
          :examples $ []
          :schema $ :: 'Dynamic
        |remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc messages $
                    &map:get op-data :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    |app.updater.user $ %{} 'FileEntry
      :defs $ {}
        |log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (&map:get db :users) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (&map:get user :name)
                update-in db ([] :sessions sid)
                  fn (session)
                    if (some? maybe-user)
                      if
                        = (md5 password) (&map:get maybe-user :password)
                        assoc session :user-id $
                          &map:get maybe-user :id
                        update session :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        |log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        |sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    vals $
                      &map:get db :users
                    fn (user)
                      = username $
                        &map:get user :name
                if (some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            [] app.util :refer $ [] find-first
            [] |md5 :default md5
    |app.updater.workflow $ %{} 'FileEntry
      :defs $ {}
        |add-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn add-command (db op-data sid op-id op-time)
              let-sugar
                    {} workflow-id draft
                    , op-data
                assoc-in db ([] :workflows workflow-id :commands op-id)
                  merge draft $ {} (:id op-id)
          :examples $ []
          :schema $ :: 'Dynamic
        |create-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-workflow (db op-data sid op-id op-time)
              let
                  workflow-name $
                    &map:get op-data :name
                  base-dir $
                    &map:get op-data :base-dir
                assoc-in db ([] :workflows op-id)
                  merge schema/workflow $ {} (:id op-id) (:name workflow-name) (:base-dir base-dir)
                    :commands $ {}
                      op-id $ merge schema/command
                        {} (:id op-id) (:title workflow-name) (:path base-dir) (:code "|echo nothing yet")
          :examples $ []
          :schema $ :: 'Dynamic
        |edit-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn edit-command (db op-data sid op-id op-time)
              let-sugar
                    [] workflow-id command-id changes
                    , op-data
                update-in db ([] :workflows workflow-id :commands command-id)
                  fn (command) (merge command changes)
          :examples $ []
          :schema $ :: 'Dynamic
        |edit-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn edit-workflow (db op-data sid op-id op-time)
              let
                  new-workflow op-data
                update-in db
                  [] :workflows $
                    &map:get new-workflow :id
                  fn (workflow) (merge workflow new-workflow)
          :examples $ []
          :schema $ :: 'Dynamic
        |remove-command $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-command (db op-data sid op-id op-time)
              let-sugar
                    [] workflow-id command-id
                    , op-data
                update-in db ([] :workflows workflow-id :commands)
                  fn (commands) (dissoc commands command-id)
          :examples $ []
          :schema $ :: 'Dynamic
        |remove-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-workflow (db op-data sid op-id op-time)
              let
                  workflow-id op-data
                update db :workflows $ fn (workflows) (dissoc workflows workflow-id)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.workflow $ :require ([] app.schema :as schema)
    |app.util $ %{} 'FileEntry
      :defs $ {}
        |find-first $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn find-first (f xs)
              reduce
                fn (_ x)
                  when (f x) (reduced x)
                , nil xs
          :examples $ []
          :schema $ :: 'Dynamic
        |join-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn join-path (xs ys)
              if
                =
                  option:unwrap-or (first ys) |
                  , |/
                , ys $ let
                    absolute? $ =
                      option:unwrap-or (first xs) |
                      , |/
                    new-path $ join-segments ([])
                      concat (.split xs |/) (.split ys |/)
                  if absolute? (str |/ new-path) new-path
          :examples $ []
          :schema $ :: 'Dynamic
        |join-segments $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn join-segments (acc xs)
              if (empty? xs) (.join-str acc |/)
                let
                    cursor $ first xs
                    next-acc $ cond
                        = cursor |.
                        , acc
                      (= cursor |..) (butlast acc)
                      (= cursor |) acc
                      true $ conj acc cursor
                  recur next-acc $ rest xs
          :examples $ []
          :schema $ :: 'Dynamic
        |log-js! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-js! (& args)
              apply js/console.log $ map
                fn (x)
                  if (coll? x) (clj->js x) x
                , args
          :examples $ []
          :schema $ :: 'Dynamic
        |map-val $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn map-val (f xs)
              assert
                or (map? xs) (seq? xs)
                , "|map-val deals maps"
              ->> xs $ map
                fn
                    [] k x
                  [] k $ f x
          :examples $ []
          :schema $ :: 'Dynamic
        |map-with-index $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn map-with-index (f xs)
              ->> xs $ map-indexed
                fn (idx x)
                  [] idx $ f x
          :examples $ []
          :schema $ :: 'Dynamic
        |test-join-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn test-join-path! ()
              println $ pr-str (join-path | |)
              println $ pr-str (join-path |/ |)
              println $ pr-str (join-path | |/)
              println $ pr-str (join-path |a |b)
              println $ pr-str (join-path |a |../b)
              println $ pr-str (join-path |a |./b)
              println $ pr-str (join-path |a/ |./b)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.util $ :require ([] clojure.string :as string)
