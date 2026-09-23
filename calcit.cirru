
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
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
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *states
            {} $ :states $ {}
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'KeyboardEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait KeyboardEventHost (:key 'String) (:meta-key? 'Bool)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :meta-key? |metaKey
          :schema $ :: 'Trait
        'UrlObjectHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait UrlObjectHost (:hostname 'String)
            :query $ :: 'JsNullish 'app.client/UrlQueryHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'UrlQueryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait UrlQueryHost (:host 'String) (:port 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            do
              ws-connect! (resolve-websocket-url)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (println "|Lost connection!") &unit
                  :on-data on-server-data
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not=
                assert-type
                  option:unwrap-or (nth op 0) :unknown
                  , 'Tag
                , :states
              println |Dispatch op
            match op
              (:states cursor s)
                reset! *states $ assert-type (update-states @*states cursor s) (:: 'Map 'Tag 'Dynamic)
              (:effect/connect) (connect!)
              _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch *store :changes $ fn (s p) (render-app!)
            add-watch *states :changes $ fn (s p) (render-app!)
            add-event-listener! |keydown $ fn (event) (on-window-keydown event)
            do
              on-page-touch $ fn () $ if (nil? @*store) (connect!) &unit
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            case-default
              option:unwrap-or (get data :kind) nil
              println "|unknown server data kind:" data
              :patch $ let
                  changes $ assert-type
                    option:unwrap-or (get data :data) ([])
                    :: 'List 'recollect.schema/change-op
                when config/dev? $ println |Changes changes
                reset! *store $ patch-twig @*store changes
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'on-window-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-window-keydown (event)
            let
                keyboard-event $ unsafe-coerce event KeyboardEventHost
              when
                and
                  = |k $ .-key keyboard-event
                  .-metaKey keyboard-event
                let
                    store $ assert-type
                      or @*store $ {}
                      :: 'Map 'Tag 'Dynamic
                    router $ option:unwrap-or (get store :router) ({})
                    router-name $ option:unwrap-or (get router :name) nil
                    session $ option:unwrap-or (get store :session) ({})
                    process-id $ option:unwrap-or
                      get-in router $ [] :params :id
                      , nil
                    enlarge-view $ option:unwrap-or (get session :enlarge-view) nil
                  case-default router-name
                    do $ println "|no thing to clear in" router-name
                    :home $ do
                      dispatch! $ :: :process/clear
                      dispatch! $ :: :process/shorten-content enlarge-view
                    :history $ dispatch! $ :: :process/clear-history
                    :process $ dispatch! $ :: :process/shorten-content process-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.browser/EventHost
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (js-present? client-errors) (js-present? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target
              comp-container
                option:unwrap-or (get @*states :states) nil
                , @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'resolve-websocket-url $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resolve-websocket-url ()
            let
                url-obj $ unsafe-coerce
                  url-parse (location-href) true
                  , UrlObjectHost
                raw-query $ .-query url-obj
                host $ if (js-present? raw-query)
                  .-host $ unsafe-coerce raw-query UrlQueryHost
                  .-hostname url-obj
                port $ if (js-present? raw-query)
                  .-port $ unsafe-coerce raw-query UrlQueryHost
                  str $ assert-type
                    option:unwrap-or (get config/site :port) 0
                    , 'Number
              str |ws:// host |: port
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ storage-get $ assert-type
                  option:unwrap-or (get config/site :storage-key) |
                  , 'String
              if (option:some? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in $ parse-cirru-edn (option:unwrap raw)
                println "|Found no storage."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
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
            js-ffi.browser :refer $ [] EventHost query-selector add-event-listener! location-href storage-get
    'app.comp.command $ %{} 'FileEntry
      :defs $ {}
        'comp-command-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-command-button (workflow)
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
                    command $ &set:to-list $ vals
                      assert-type
                        option:unwrap-or (get workflow :commands) ({})
                        :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    d! :effect/run $ {}
                      :command $ option:unwrap-or (get command :code) nil
                      :cwd $ join-path
                        option:unwrap-or (get workflow :base-dir) nil
                        option:unwrap-or (get command :path) nil
                      :title $ option:unwrap-or (get command :title) nil
              <> $ option:unwrap-or (get workflow :name) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'comp-command-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-command-editor (states base-command on-submit)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ assert-type
                  or
                    option:unwrap-or (get states :data) nil
                    if (option:some? base-command)
                      select-keys (option:unwrap base-command) ([] :code :path :title)
                      {} (:title |) (:code |) (:path |./)
                  :: 'Map 'Tag 'Dynamic
              div
                {} $ :style $ merge ui/column
                  {} $ :padding "|0 16px 16px"
                div ({})
                  <> |Command $ {} (:font-size 16) (:font-family ui/font-fancy)
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ option:unwrap-or (get state :title) nil
                  :placeholder |title...
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :title $ option:unwrap-or (get e :value) nil
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ option:unwrap-or (get state :code) nil
                  :placeholder "|Command code"
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :code $ option:unwrap-or (get e :value) nil
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ option:unwrap-or (get state :path) nil
                  :placeholder "|Command path"
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :path $ option:unwrap-or (get e :value) nil
                =< nil 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  button
                    {} (:style style/button)
                      :on-click $ fn (e d!) (on-submit state d!) (d! cursor nil)
                    <> |Submit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              , 'Dynamic
        'comp-command-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-command-row (states command workflow-id)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ either
                  option:unwrap-or (get states :data) nil
                  {} $ :pop? false
                remove-plugin $ use-confirm (>> states :remove) ({})
              div
                {} $ :style style-command-row
                div
                  {} $ :style ui/row-parted
                  div
                    {} $ :style ui/row-middle
                    <>
                      or
                        option:unwrap-or (get command :title) nil
                        , |Task
                      {} $ :font-size 20
                    =< 8 nil
                    comp-icon :play
                      {} (:font-size 14) (:cursor :pointer)
                        :color $ hsl 200 80 70
                      fn (e d! m!)
                        d! :effect/run $ {}
                          :cwd $ option:unwrap-or (get command :path) nil
                          :command $ option:unwrap-or (get command :code) nil
                          :title $ option:unwrap-or (get command :title) nil
                  div
                    {} $ :style ui/row-parted
                    comp-icon :edit-2
                      &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                      fn (e d!)
                        d! cursor $ assoc state :pop? true
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          comp-command-editor (>> states :edit-command)
                            %some $ assert-type command $ :: 'Map 'Tag 'Dynamic
                            fn (command-draft d! m!)
                              d! :workflow/edit-command $ [] workflow-id
                                option:unwrap-or (get command :id) nil
                                , command-draft
                              on-close
                      option:unwrap-or (get state :pop?) nil
                      fn (d!)
                        d! cursor $ assoc state :pop? false
                    =< 8 nil
                    comp-icon :x
                      &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                      fn (e d!)
                        .show remove-plugin d! $ fn () $ d! :workflow/remove-command
                          [] workflow-id $ option:unwrap-or (get command :id) nil
                div
                  {} $ :style $ merge ui/row-middle
                    {} $ :font-family ui/font-code
                  <>
                    option:unwrap-or (get command :path) nil
                    {} (:display :inline-block)
                      :background-color $ hsl 0 0 100 $ %some 0.2
                      :padding "|0 8px"
                  =< 24 nil
                  <>
                    option:unwrap-or (get command :code) nil
                    {}
                      :background-color $ hsl 0 0 100 $ %some 0.2
                      :padding "|0 8px"
                      :display :inline-block
                      :min-width 320
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'style-command-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-command-row
            merge ui/column $ {}
              :border $ str "|1px solid " $ hsl 0 0 100 (%some 0.3)
              :border-radius |4px
              :padding "|8px 8px"
              :width 600
              :min-width :max-content
              :margin "|16px 8px"
              :color :white
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.command
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> span div input button a
            [] respo.comp.space :refer $ [] =<
            [] feather.core :refer $ [] comp-i comp-icon
            [] respo-alerts.core :refer $ [] use-confirm comp-modal
            [] app.style :as style
            [] app.util :refer $ [] join-path
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            let
                state $ option:unwrap-or (get states :data) nil
                session $ option:unwrap-or (get store :session) nil
                router $ option:unwrap-or (get store :router) nil
                router-data $ option:unwrap-or (get router :data) nil
              if (nil? store) (comp-offline)
                div
                  {} $ :class-name $ str-spaced css/global css/fullscreen css/column css-container
                  comp-navigation
                    option:unwrap-or (get store :logged-in?) nil
                    , router $ option:unwrap-or (get store :count) nil
                  if
                    option:unwrap-or (get store :logged-in?) nil
                    let
                        router $ option:unwrap-or (get store :router) nil
                        router-data $ option:unwrap-or (get router :data) nil
                      case-default
                        option:unwrap-or (get router :name) nil
                        comp-missing router
                        :profile $ comp-profile
                          option:unwrap-or (get store :user) nil
                          , router-data
                        :home $ comp-home (>> states :home) router-data
                        :workflows $ comp-workflow-container (>> states :workflows)
                          option:unwrap-or (get router-data :workflows) nil
                        :history $ comp-history $ option:unwrap-or (get router-data :histories) nil
                        :process $ comp-process-detail (>> states :detail)
                          assert-type
                            option:unwrap-or (get router-data :detail) ({})
                            :: 'Map 'Tag 'Dynamic
                    comp-login $ >> states :login
                  comp-status-color $ option:unwrap-or (get store :color) nil
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    assert-type
                      option:unwrap-or
                        get-in store $ [] :session :messages
                        {}
                      :: 'Map 'String 'Dynamic
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  when dev? $ comp-reel
                    option:unwrap-or (get store :reel-length) nil
                    {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ option:unwrap-or (get config/site :theme) nil
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url("
                    option:unwrap-or (get config/site :icon) nil
                    , "|)"
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
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} (:class-name css-status)
              :style $ {} $ :background-color color
          :examples $ []
          :schema $ :: 'Dynamic
        'css-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-container
            {} $ |& $ {}
              :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'Dynamic
        'css-status $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-status
            {} $ |& $ {} (:width 24) (:height 24) (:position :absolute) (:bottom 60) (:left 8) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
    'app.comp.history $ %{} 'FileEntry
      :defs $ {}
        'comp-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-history (histories)
            div
              {} $ :class-name css-history-page
              div ({})
                button $ {} (:class-name css/button) (:inner-text |Clear)
                  :on-click $ fn (e d!) (d! :process/clear-history nil)
              =< nil 16
              if (empty? histories)
                <> |Empty $ {} (:font-family ui/font-fancy) (:font-weight 100) (:color :white)
                list->
                  {} $ :style $ merge ui/flex
                    {} (:overflow :auto) (:padding "|16px 0 120px 0")
                  -> histories $ map $ fn (history)
                    []
                      option:unwrap-or (get history :id) nil
                      div
                        {} $ :class-name $ str-spaced css/row-middle css-history
                        <>
                          format-date-time $ assert-type
                            option:unwrap-or (get history :started-at) 0
                            , 'Number
                          , css-date-text
                        <>
                          or
                            option:unwrap-or (get history :title) nil
                            , |Task
                          merge style/text $ {} $ :min-width 160
                        <>
                          option:unwrap-or (get history :command) nil
                          merge style/text $ {} $ :min-width 160
                        <>
                          option:unwrap-or (get history :cwd) nil
                          merge style/text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List (:: 'Map 'Tag 'Dynamic)
        'css-date-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-date-text
            {} $ |& $ merge style/text
              {} (:font-size 12)
                :color $ hsl 0 0 70
          :examples $ []
          :schema $ :: 'Dynamic
        'css-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-history
            {}
              |& $ {} (:margin |0px)
                :background-color $ hsl 200 40 28
                :padding "|4px 8px"
                :width 960
                :min-width :max-content
                :border-bottom $ str "|1px solid " $ hsl 0 0 0 (%some 0.2)
                :word-break :break-word
              |&:hover $ {} $ :background-color (hsl 200 40 32)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-history-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-history-page
            {} $ |& $ merge ui/flex ui/column
              {} (:padding "|16px 16px") (:font-family ui/font-code) (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
        'format-date-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-date-time (timestamp)
            unsafe-coerce
              .!format (dayjs timestamp) "|MM-DD HH:mm:ss"
              , String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.history
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> list-> span div button
            respo.comp.space :refer $ =<
            app.style :as style
            |dayjs :default dayjs
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.comp.home $ %{} 'FileEntry
      :defs $ {}
        'comp-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-empty ()
            span $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (states router-data)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ or
                  option:unwrap-or (get states :data) nil
                  {} (:query |) (:pop? false)
              div
                {} $ :class-name $ str-spaced css/expand css/column css-home
                =< nil 8
                div
                  {} $ :class-name $ str-spaced css/expand css/row
                  option:fold (get router-data :enlarge-view)
                    fn () $ comp-empty
                    fn (enlarge-view)
                      let
                          processes $ assert-type
                            option:unwrap-or (get router-data :processes) ({})
                            :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                          process-id $ assert-type enlarge-view 'Number
                        option:fold (get processes process-id)
                          fn () $ comp-empty
                          fn (large-process)
                            comp-process-detail (>> states :enlarge) large-process
                  div
                    {} $ :class-name $ str-spaced css/expand css/column
                    div
                      {} (:class-name css/row-parted)
                        :style $ {} (:align-items :center) (:padding "|0 8px")
                      div
                        {} $ :class-name $ str-spaced css/flex css/row-middle
                        input $ {} (:class-name css-filter) (:placeholder |filter...)
                          :value $ option:unwrap-or (get state :query) nil
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :query $ option:unwrap-or (get e :value) nil
                        list->
                          {}
                            :class-name $ str-spaced css/flex css/row
                            :style $ {} $ :flex-wrap :wrap
                          ->
                            assert-type
                              option:unwrap-or (get router-data :workflows) ({})
                              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                            &map:to-list
                            &list:filter-pair $ fn (k workflow)
                              option:unwrap-or
                                get
                                  parse-by-letter
                                    lower-case $ assert-type
                                      option:unwrap-or (get workflow :name) |
                                      , 'String
                                    lower-case $ assert-type
                                      option:unwrap-or (get state :query) |
                                      , 'String
                                  , :matches?
                                , nil
                            &list:sort-by $ fn (pair)
                              option:unwrap-or
                                get
                                  option:unwrap-or (last pair) ({})
                                  , :name
                                , nil
                            &list:map-pair $ fn (k workflow)
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
                            :style $ {} $ :width 400
                            :container-style $ {}
                            :render $ fn (on-close)
                              comp-command-editor (>> states :quick-run) (%none)
                                fn (draft d!)
                                  d! :effect/run $ {}
                                    :command $ option:unwrap-or (get draft :code) nil
                                    :cwd $ option:unwrap-or (get draft :path) nil
                                    :title $ option:unwrap-or (get draft :title) nil
                                  on-close d!
                          option:unwrap-or (get state :pop?) nil
                          fn (d!)
                            d! cursor $ assoc state :pop? false
                        =< 8 nil
                        button $ {}
                          :class-name $ str-spaced css/button style/css-button
                          :inner-text "|Kill all"
                          :on-click $ fn (e d!)
                            &doseq
                              pid $ &set:to-list $ keys
                                assert-type
                                  option:unwrap-or (get router-data :processes) ({})
                                  :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                              d! :effect/kill pid
                        =< 8 nil
                        a
                          {} (:class-name css/link)
                            :on-click $ fn (e d!) (d! :process/clear nil)
                          <> |Clear
                    list->
                      {} $ :class-name $ str-spaced css/flex css-process-list
                      ->
                        assert-type
                          option:unwrap-or (get router-data :processes) ({})
                          :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                        &map:to-list
                        filter $ fn (x)
                          not= (first x) (get router-data :enlarge-view)
                        sort $ fn (x y)
                          if
                            and
                              option:unwrap-or
                                get
                                  option:unwrap-or (last y) ({})
                                  , :alive?
                                , nil
                              option:unwrap-or
                                get
                                  option:unwrap-or (last x) ({})
                                  , :alive?
                                , nil
                            -
                              option:unwrap-or
                                get
                                  option:unwrap-or (last x) ({})
                                  , :started-at
                                , nil
                              option:unwrap-or
                                get
                                  option:unwrap-or (last y) ({})
                                  , :started-at
                                , nil
                            -
                              option:unwrap-or
                                get
                                  option:unwrap-or (last y) ({})
                                  , :started-at
                                , nil
                              option:unwrap-or
                                get
                                  option:unwrap-or (last x) ({})
                                  , :started-at
                                , nil
                        &list:sort-by $ fn (pair)
                          not $ option:unwrap-or
                            get
                              option:unwrap-or (last pair) ({})
                              , :alive?
                            , nil
                        &list:map-pair $ fn (pid process)
                          [] pid $ comp-process process
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
        'css-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-filter
            {} $ |& $ {} (:min-width 60) (:width 60) (:background-color :transparent)
              :color $ hsl 0 0 100 $ %some 0.8
              :border-width "|0 0 1px 0"
              :border-bottom $ str "|1px solid " $ hsl 0 0 100 (%some 0.5)
              :border-radius 0
              :outline :none
              :line-height |28px
              :font-size 14
              :font-family ui/font-normal
              :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        'css-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-home
            {} $ |& $ merge ui/flex ui/column
              {} (:padding "|8px 0px") (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-process-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-process-list
            {} $ |& $ {} (:overflow :auto) (:flex-wrap :wrap) (:padding-bottom 120) (:align-items :flex-start) (:gap |8px) (:grid-template-columns "|repeat(auto-fit, minmax(560px, 1fr))") (:grid-auto-flow :dense) (:display :grid) (:padding-bottom 120) (:margin "|0 8px") (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
        'lower-case $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn lower-case (text)
            unsafe-coerce (.!toLowerCase text) 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.home
          :require
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
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ or
                  option:unwrap-or (get states :data) nil
                  , initial-state
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ option:unwrap-or (get state :username) nil
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username $ option:unwrap-or (get e :value) nil
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ option:unwrap-or (get state :password) nil
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password $ option:unwrap-or (get e :value) nil
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge style/link
                      :on-click $ on-submit
                        option:unwrap-or (get state :username) nil
                        option:unwrap-or (get state :password) nil
                        , true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge style/link
                      :on-click $ on-submit
                        option:unwrap-or (get state :username) nil
                        option:unwrap-or (get state :password) nil
                        , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              storage-set!
                assert-type
                  option:unwrap-or (get config/site :storage-key) |
                  , 'String
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] app.config :as config
            js-ffi.browser :refer $ [] storage-set!
    'app.comp.missing $ %{} 'FileEntry
      :defs $ {} $ 'comp-missing
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-missing (router)
            div ({}) (<> "|Page missing")
              div
                {} $ :style $ {} (:font-family ui/font-code)
                <> router
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.missing
          :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> span div
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? router count-members)
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
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! :router/change $ {} $ :name :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
        'css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav
            {} $ |& $ merge ui/row-center
              {} (:height 32) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                :border-bottom $ str "|1px solid " $ hsl 0 0 0 (%some 0.1)
                :font-family ui/font-fancy
                :background-color $ hsl 0 0 0 $ %some 0.04
          :examples $ []
          :schema $ :: 'Dynamic
        'render-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-entry (router router-name title)
            div
              {}
                :style $ merge style-logo $ assert-type
                  if
                    = router-name $ option:unwrap-or (get router :name) nil
                    {} $ :color :white
                    {}
                  :: 'Map 'Tag 'Dynamic
                :on-click $ fn (e d!)
                  d! :router/change $ {} $ :name router-name
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag 'String
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-logo
            {} (:cursor :pointer)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> >> span div
            app.config :as config
            respo.css :refer $ defstyle
    'app.comp.process $ %{} 'FileEntry
      :defs $ {}
        'comp-process $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-process (process)
            div
              {} $ :class-name css-process
              div
                {} (:class-name css-title-bar)
                  :style $ if
                    option:unwrap-or (get process :alive?) nil
                    {} $ :background-color $ hsl 50 100 60
                div
                  {} $ :class-name css/row-middle
                  <>
                    or
                      option:unwrap-or (get process :title) nil
                      , |Task
                    merge style/text $ {} $ :color :black
                div
                  {} $ :class-name css/row-middle
                  button $ {} (:class-name css/button)
                    :style $ {}
                      :background $ hsl 0 0 0 $ %some 0.1
                      :color :white
                    :on-click $ fn (e d!)
                      d! $ :: :session/enlarge $ option:unwrap-or (get process :pid) nil
                    :inner-text |Enlarge
                  ; =< 8 nil
                  ; a $ {} (:class-name css/link)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :process)
                        :params $ {} $ :id
                          option:unwrap-or (get process :pid) nil
                    :inner-text |View
                  if
                    option:unwrap-or (get process :alive?) nil
                    a
                      {} (:class-name css-link-kill)
                        :on-click $ fn (e d!)
                          d! :effect/kill $ option:unwrap-or (get process :pid) nil
                      <> |Kill
                    a $ {} (:style style/link) (:inner-text |Redo)
                      :on-click $ fn (e d!)
                        d! :effect/run $ {}
                          :cwd $ option:unwrap-or (get process :cwd) nil
                          :command $ option:unwrap-or (get process :command) nil
                          :title $ option:unwrap-or (get process :title) nil
                        d! :process/remove-dead $ option:unwrap-or (get process :pid) nil
              div
                {} $ :class-name $ str-spaced css/expand css-process-log
                <>
                  option:unwrap-or (get process :command) nil
                  merge style/text
                =< 8 nil
                <>
                  option:unwrap-or (get process :cwd) nil
                  merge style/text $ {} $ :color (hsl 0 0 60)
              if-not
                empty? $ option:unwrap-or (get process :content) nil
                list->
                  {} $ :class-name css-content-list
                  ->
                    assert-type
                      option:unwrap-or (get process :content) []
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    take-last 4
                    map-indexed $ fn (idx chunk)
                      [] idx $ let
                          urls $ find-urls $ assert-type
                            option:unwrap-or (get chunk :data) |
                            , 'String
                        div
                          {} $ :style $ {} (:margin-top 2) (:display :block)
                            :background-color $ hsl 0 0 0 $ %some 0.5
                          if-not (empty? urls)
                            list-> ({})
                              -> urls $ map $ fn (url)
                                [] url $ a $ {} (:inner-text url) (:target |_blank) (:href url)
                                  :style $ {}
                                    :color $ hsl 200 80 70
                                    :margin "|0 8px"
                          <>
                            option:unwrap-or (get chunk :data) nil
                            {}
                              :color $ case-default
                                option:unwrap-or (get chunk :type) nil
                                hsl 60 0 72
                                :stderr $ hsl 60 80 36
                                :error $ hsl 0 80 50
                              :padding 8
                              :display :block
                              :white-space :pre-line
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'css-content-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-content-list
            {} $ |& $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height |1.5em) (:max-height 240) (:overflow :auto) (:border-radius |4px)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-link-kill $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-link-kill
            {} $ |& $ merge style/link
              {} (:color :red) (:border-color :red)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-process $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-process
            {} $ |& $ merge
              {} (:font-family ui/font-code) (:border-radius |4px) (:display :inline-block) (:vertical-align :top)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-process-log $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-process-log
            {} $ |& $ merge ui/row-middle
              {}
                :background-color $ hsl 0 0 0 $ %some 0.5
                :font-size 10
          :examples $ []
          :schema $ :: 'Dynamic
        'css-title-bar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-title-bar
            {} $ |& $ merge ui/row-parted
              {}
                :background-color $ hsl 0 0 100 $ %some 0.4
                :color :black
                :padding "|4px 4px"
                :border-radius |4px
          :examples $ []
          :schema $ :: 'Dynamic
        'find-urls $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-urls (text)
            let
                matched $ .!match text $ new js/RegExp |https?://\\S+ |g
              if (js-nullish? matched) ([])
                unsafe-coerce (to-calcit-data matched) (:: 'List 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :features $ #{} :js-ffi
            :return $ :: 'List 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.process
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp list-> >> <> span div button a
            app.style :as style
            app.util :refer $ map-with-index
            respo-alerts.core :refer $ comp-alerts
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.comp.process-detail $ %{} 'FileEntry
      :defs $ {}
        'ScrollElementHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollElementHost (:scroll-top 'Number) (:scroll-height 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:scroll-height |scrollHeight) (:scroll-top |scrollTop)
            :writable $ #{} :scroll-top
          :schema $ :: 'Trait
        'comp-process-detail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-process-detail (states process)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ either
                  option:unwrap-or (get states :data) nil
                  {} (:filter |) (:filter? true) (:wrap? true) (:all-log? false) (:hide-thread-info? false)
                command-plugin $ use-prompt (>> states :command)
                  {} (:text "|change command")
                    :initial $ option:unwrap-or (get process :command) nil
              div
                {} (:class-name css-process)
                  :style $ {} $ :flex 2
                div
                  {} $ :class-name css/row-parted
                  div
                    {} $ :style $ merge ui/row-middle
                      {} $ :gap 4
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ option:unwrap-or (get state :filter?) nil
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :filter? $ not
                          option:unwrap-or (get state :filter?) nil
                    if
                      option:unwrap-or (get state :filter?) nil
                      input $ {} (:class-name css-filter)
                        :value $ option:unwrap-or (get state :filter) nil
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :filter $ option:unwrap-or (get e :value) nil
                        :placeholder |filter...
                      <> |Filter...
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ option:unwrap-or (get state :all-log?) nil
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :all-log? $ not
                          option:unwrap-or (get state :all-log?) nil
                    <> "|All log?"
                    comp-icon :arrow-down
                      {} (:font-size 14) (:class-name css-down-icon)
                        :color $ hsl 0 0 80
                      , on-scroll-down!
                    if-not
                      empty? $ option:unwrap-or (get process :content) nil
                      a
                        {}
                          :on-click $ fn (e d!)
                            d! :process/shorten-content $ option:unwrap-or (get process :pid) nil
                          :style style/link
                        <> |Clear
                    =< 8 nil
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ option:unwrap-or (get state :hide-thread-info?) nil
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :hide-thread-info? $ not
                          option:unwrap-or (get state :hide-thread-info?) nil
                    <> |HideThread?
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ option:unwrap-or (get state :wrap?) nil
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :wrap? $ not
                          option:unwrap-or (get state :wrap?) nil
                    <> |Wrap?
                  div
                    {} $ :class-name css-toolbar
                    span $ {}
                      :inner-text $ or
                        option:unwrap-or (get process :title) nil
                        , |Task
                      :class-name css/font-fancy
                      :style $ merge style/text
                        {} $ :padding "|0 8px"
                        assert-type
                          if
                            option:unwrap-or (get process :alive?) false
                            {} (:color :black) (:border-radius |4px)
                              :background-color $ hsl 60 100 60
                            {}
                          :: 'Map 'Tag 'Dynamic
                      :title $ str
                        option:unwrap-or (get process :cwd) nil
                        , &newline $ option:unwrap-or (get process :command) nil
                      :on-click $ fn (e d!)
                        .show command-plugin d! $ fn (text)
                          d! $ :: :process/change-command
                            option:unwrap-or (get process :pid) nil
                            , text
                    ; =< 16 nil
                    ; <>
                      option:unwrap-or (get process :command) nil
                      , style/text
                    ; =< 16 nil
                    ; <> $ merge style/text $ {} (:font-size 12)
                      :color $ hsl 0 0 70
                    ; =< 16 nil
                    ; <>
                      option:unwrap-or (get process :pid) nil
                      , style/text
                    =< 8 nil
                    if
                      option:unwrap-or (get process :alive?) nil
                      a
                        {} (:class-name css/link)
                          :style $ {} (:color :red) (:border-color :red)
                          :on-click $ fn (e d!)
                            d! :effect/kill $ option:unwrap-or (get process :pid) nil
                          :title $ option:unwrap-or (get process :command) nil
                        <> |Kill
                      div ({})
                        a $ {} (:class-name css/link) (:inner-text |Redo)
                          :title $ option:unwrap-or (get process :command) nil
                          :on-click $ fn (e d!)
                            d! :effect/run $ {}
                              :cwd $ option:unwrap-or (get process :cwd) nil
                              :command $ option:unwrap-or (get process :command) nil
                              :title $ option:unwrap-or (get process :title) nil
                              :enlarge? true
                            d! :process/remove-dead $ option:unwrap-or (get process :pid) nil
                        =< 8 nil
                        a $ {} (:class-name css/link) (:inner-text |Drop)
                          :on-click $ fn (e d!)
                            d! :router/change $ {} $ :name :home
                            d! :process/remove-dead $ option:unwrap-or (get process :pid) nil
                =< nil 8
                div
                  {} $ :class-name $ str-spaced |scroll-area css-logs-list
                  if
                    not $ empty? process
                    list->
                      {} $ :style $ {}
                        :white-space $ if
                          option:unwrap-or (get state :wrap?) nil
                          , |pre-wrap |pre
                      ->
                        option:unwrap-or (get process :content) nil
                        filter $ fn (chunk)
                          if
                            or
                              not $ option:unwrap-or (get state :filter?) nil
                              blank? $ option:unwrap-or (get state :filter) nil
                            , true $ includes?
                              assert-type
                                option:unwrap-or (get chunk :data) |
                                , 'String
                              assert-type
                                option:unwrap-or (get state :filter) |
                                , 'String
                        take-last $ if
                          option:unwrap-or (get state :all-log?) nil
                          , 2000 60
                        map-indexed $ fn (idx chunk)
                          []
                            option:unwrap-or (get chunk :data) nil
                            span $ {} (:class-name css-log)
                              :style $ if
                                = :stderr $ option:unwrap-or (get chunk :type) nil
                                {} $ :color :red
                                {}
                              :inner-text $ do
                                if
                                  option:unwrap-or (get state :hide-thread-info?) nil
                                  hide-thread-info $ option:unwrap-or (get chunk :data) nil
                                  option:unwrap-or (get chunk :data) nil
                                ; .!replace
                                  option:unwrap-or (get chunk :data) nil
                                  , &newline $ str &newline &newline
                  =< nil 200
                .render command-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
        'css-down-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-down-icon
            {}
              |& $ {} (:opacity 0.8) (:cursor :pointer)
              |&:hover $ {} $ :opacity 1
          :examples $ []
          :schema $ :: 'Dynamic
        'css-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-filter
            {} $ |& $ merge ui/input
              {}
                :color $ hsl 0 0 100
                :background-color $ hsl 0 0 100 $ %some 0
                :border-color $ hsl 0 0 100 $ %some 0.4
          :examples $ []
          :schema $ :: 'Dynamic
        'css-log $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-log
            {} $ |& $ {} (:font-size 12) (:margin |0) (:font-family ui/font-code) (:line-height |20px)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-logs-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-logs-list
            {} $ |& $ merge ui/flex
              {} (:overflow :auto)
                :border $ str "|1px solid " $ hsl 0 0 100 (%some 0.3)
                :padding 8
                :background-color $ hsl 0 0 0 $ %some 0.5
                :overflow :auto
                :word-break :break-all
                :line-height 1.4
          :examples $ []
          :schema $ :: 'Dynamic
        'css-process $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-process
            {} $ |& $ merge ui/flex ui/column
              {} (; :padding "|8px 16px") (:overflow :auto) (:color |#aaa)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-toolbar
            {} $ |& $ merge ui/row-middle
              {} $ :font-family ui/font-code
          :examples $ []
          :schema $ :: 'Dynamic
        'hide-thread-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hide-thread-info (text)
            unsafe-coerce
              .!replace text (new js/RegExp |^[\d\s\:\-\.\+]+\s+\[[\w\d\s\:\,]+\]\s?) |
              , 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'on-scroll-down! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-scroll-down! (e d!)
            match (query-selector |.scroll-area)
              (:none) &unit
              (:some raw-element)
                let
                    element $ unsafe-coerce raw-element ScrollElementHost
                  js-set element :scroll-top $ element :scroll-height
                  , &unit
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.process-detail
          :require
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
            js-ffi.browser :refer $ [] query-selector DomElementHost
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ option:unwrap-or (get user :name) nil
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members (&map:to-list)
                    &list:map-pair $ fn (k username)
                      [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge style/button
                    :on-click $ fn (_e _d!) (refresh-page!)
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge style/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (_ dispatch!) (dispatch! :user/log-out nil)
                      storage-remove! $ assert-type
                        option:unwrap-or (get config/site :storage-key) |
                        , 'String
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'String 'String)
        'refresh-page! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-page! ()
            let
                host-location $ unsafe-coerce js/location LocationHost
                now $ unsafe-coerce (js/Date.now) 'Number
              .replace! host-location $ str (.-protocol host-location) |// (.-host host-location) |?time= now
              , &unit
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            [] app.style :as style
            js-ffi.browser :refer $ [] LocationHost storage-remove!
    'app.comp.workflow $ %{} 'FileEntry
      :defs $ {}
        'comp-workflow-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-container (states workflows)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ assert-type
                  or
                    option:unwrap-or (get states :data) nil
                    {} (:focused-id nil) (:base-workflow nil) (:pop? false)
                  :: 'Map 'Tag 'Dynamic
              div
                {} $ :style $ merge ui/flex ui/row
                  {} $ :padding 16
                div
                  {} $ :style $ {} (:width 200)
                  div
                    {} $ :style ui/row-parted
                    <> |Workflows $ {} $ :font-family ui/font-fancy
                    comp-icon :plus
                      {} (:font-size 16)
                        :color $ hsl 200 80 60
                        :cursor :pointer
                      fn (e d!)
                        d! cursor $ assoc state :pop? true
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          comp-workflow-editor (>> states :editor) (%none) on-close
                      option:unwrap-or (get state :pop?) nil
                      fn (d!)
                        d! cursor $ assoc state :pop? false
                  =< nil 8
                  list-> ({})
                    -> workflows (&map:to-list)
                      &list:sort-by $ fn (pair)
                        option:unwrap-or
                          get
                            option:unwrap-or (last pair) ({})
                            , :name
                          , nil
                      &list:map-pair $ fn (k workflow)
                        [] k $ div
                          {}
                            :style $ merge style-workflow-entry $ {}
                              :background-color $ if
                                =
                                  option:unwrap-or (get workflow :id) nil
                                  option:unwrap-or (get state :focused-id) nil
                                hsl 0 0 100 $ %some 0.2
                                hsl 0 0 100 $ %some 0
                            :on-click $ fn (e d!)
                              d! cursor $ assoc state :focused-id $ option:unwrap-or (get workflow :id) nil
                          <> $ option:unwrap-or (get workflow :name) nil
                div $ {} $ :style
                  {} (:width 1)
                    :background-color $ hsl 0 0 100 $ %some 0.2
                    :margin 16
                div
                  {} $ :style $ merge ui/flex
                    {} $ :padding 8
                  let
                      focused-id $ assert-type
                        option:unwrap-or (get state :focused-id) |
                        , 'String
                    if (contains? workflows focused-id)
                      let
                          workflow $ option:unwrap $ get workflows focused-id
                        comp-workflow-detail (>> states :detail) workflow
                      div ({})
                        <> |Nothing $ {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 70
                          :font-size 20
                          :font-weight 100
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
        'comp-workflow-detail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-detail (states workflow)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ either
                  option:unwrap-or (get states :data) nil
                  {} (:pop? false) (:edit? false)
                remove-plugin $ use-confirm (>> states :remove) ({})
              div ({})
                div
                  {} $ :style $ merge ui/row-parted
                  div
                    {} $ :style ui/row-middle
                    <> |Commands $ {} (:font-size 24) (:font-family ui/font-fancy)
                      :color $ hsl 0 0 70
                      :font-weight 100
                    =< 8 nil
                    <>
                      option:unwrap-or (get workflow :base-dir) nil
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
                          :style $ {} $ :width 400
                          :container-style $ {}
                          :render $ fn (on-close)
                            comp-command-editor (>> states :add-command) (%none)
                              fn (command-draft d! m!)
                                d! :workflow/add-command $ {}
                                  :workflow-id $ option:unwrap-or (get workflow :id) nil
                                  :draft command-draft
                                on-close
                        option:unwrap-or (get state :pop?) nil
                        , on-close
                  div
                    {} $ :style ui/row-parted
                    comp-icon :edit-2
                      &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                      fn (e d!)
                        d! cursor $ assoc state :edit? true
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          comp-workflow-editor (>> states :editor)
                            %some $ assert-type workflow $ :: 'Map 'Tag 'Dynamic
                            , on-close
                      option:unwrap-or (get state :edit?) nil
                      fn (d!)
                        d! cursor $ assoc state :edit? false
                    =< 8 nil
                    comp-icon :x
                      &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                      fn (e d!)
                        .show remove-plugin d! $ fn () $ d! :workflow/remove
                          option:unwrap-or (get workflow :id) nil
                list-> ({})
                  ->
                    assert-type
                      option:unwrap-or (get workflow :commands) ({})
                      :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    &map:to-list
                    &list:map-pair $ fn (k command)
                      [] k $ comp-command-row (>> states k) command $ assert-type
                        option:unwrap-or (get workflow :id) |
                        , 'String
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
        'comp-workflow-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-editor (states base-workflow on-toggle)
            let
                cursor $ option:unwrap-or (get states :cursor) nil
                state $ assert-type
                  or
                    option:unwrap-or (get states :data) nil
                    if (option:some? base-workflow)
                      select-keys (option:unwrap base-workflow) ([] :name :base-dir)
                      {} (:name |) (:base-dir |./)
                  :: 'Map 'Tag 'Dynamic
              div
                {} $ :style $ merge ui/column
                  {} $ :padding |8px
                div ({})
                  <> |Workflow $ {} $ :font-family ui/font-fancy
                =< nil 6
                div ({})
                  input $ {}
                    :style $ merge ui/input $ {} (:width 240)
                    :placeholder "|Workflow name"
                    :value $ option:unwrap-or (get state :name) nil
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :name $ option:unwrap-or (get e :value) nil
                =< nil 8
                div ({})
                  input $ {}
                    :style $ merge ui/input $ {} (:width 240)
                    :placeholder "|Base directory"
                    :value $ option:unwrap-or (get state :base-dir) nil
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :base-dir $ option:unwrap-or (get e :value) nil
                =< nil 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  button
                    {} (:style style/button)
                      :on-click $ fn (e d!)
                        let
                            data $ select-keys state $ [] :name :base-dir
                          if (option:some? base-workflow)
                            d! :workflow/edit $ assoc data :id $ option:unwrap-or
                              get (option:unwrap base-workflow) :id
                              , nil
                            d! :workflow/create data
                          d! cursor nil
                          on-toggle d!
                    <> |Submit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              , 'Dynamic
        'style-workflow-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-workflow-entry
            {} (:cursor :pointer) (:padding "|0 8px") (:min-width 40) (:min-height 20)
              :border-bottom $ str "|1px solid " $ hsl 0 0 94 (%some 0.1)
              :line-height |36px
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.workflow
          :require
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
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            let
                mode $ option:unwrap-or (get-env |mode) |release
              = mode |dev
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:port 11014) (:title |Termina) (:icon |http://cdn.tiye.me/logo/termina.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/termina/) (:cdn-folder |tiye.me:cdn/termina) (:upload-folder |tiye.me:repo/mvc-works/termina/) (:server-folder |tiye.me:servers/termina) (:theme |#eeeeff) (:storage-key |termina) (:storage-file |termina.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.manager $ %{} 'FileEntry
      :defs $ {}
        '*registry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *registry ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'app.manager/ProcessHost
        'EventEmitterHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait EventEmitterHost
            .on $ :: 'Fn $ {}
              :args $ [] EventEmitterHost 'String 'Fn
              :return EventEmitterHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :on |on
          :schema $ :: 'Trait
        'ProcessHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ProcessHost (:pid 'Number) (:stdout EventEmitterHost) (:stderr EventEmitterHost)
            .on $ :: 'Fn $ {}
              :args $ [] ProcessHost 'String 'Fn
              :return ProcessHost
            .unref $ :: 'Fn $ {}
              :args $ [] ProcessHost
              :return 'Unit
            .kill $ :: 'Fn $ {}
              :args $ [] ProcessHost 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} (:kill |kill) (:on |on) (:pid |pid) (:stderr |stderr) (:stdout |stdout) (:unref |unref)
          :schema $ :: 'Trait
        'RegExpHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpHost
            .test $ :: 'Fn $ {}
              :args $ [] RegExpHost 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :test |test
          :schema $ :: 'Trait
        'create-process! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-process! (op-data dispatch! sid)
            let
                command $ read-string-field op-data :command
                cwd $ read-string-field op-data :cwd
                jump? $ read-bool-field-or op-data :jump? false
                enlarge? $ read-bool-field-or op-data :enlarge? false
                ; spawn? $ or true $ :spawn? op-data
                proc $ unsafe-coerce
                  if (includes? command "| | ")
                    cp/exec command $ js-object $ :cwd cwd
                    let
                        parsed $ parse-command command
                      match parsed $
                        :command proc-name args envs
                        let
                            p $ unsafe-coerce
                              cp/spawn (w-js-log proc-name) (w-js-log args)
                                w-js-log $ js-object (:cwd cwd) (:env envs) (:detached true)
                              , ProcessHost
                          .unref p
                          , p
                  , ProcessHost
                pid $ .-pid proc
              swap! *registry assoc pid proc
              dispatch!
                :: :process/create $ {} (:pid pid) (:command command) (:cwd cwd)
                  :title $ option:unwrap-or (get op-data :title) nil
                , sid
              if jump? $ dispatch!
                :: :router/change $ {} (:name :process)
                  :params $ {} $ :id pid
                , sid
              if enlarge? $ dispatch! (:: :session/enlarge pid) sid
              .on proc |exit $ fn (code _e) (js/console.warn |[EXIT] code _e)
                dispatch!
                  :: :process/error $ [] pid $ str &newline "|exit: " code
                  , sid
                dispatch! (:: :process/finish pid) sid
                swap! *registry dissoc pid
              .on proc |SIGINT $ fn (sig)
                dispatch!
                  :: :process/error $ [] pid $ str-spaced |SIGINT sig
                  , sid
              .on proc |SIGTERM $ fn (sig)
                dispatch!
                  :: :process/error $ [] pid $ str-spaced |SIGTERM sig
                  , sid
              .on proc |SIGKILL $ fn (sig)
                dispatch!
                  :: :process/error $ [] pid $ str-spaced |SIGKILL sig
                  , sid
              .on proc |error $ fn (event)
                dispatch!
                  :: :process/error $ [] pid $ str-spaced |error: (str event)
                  , sid
                ; dispatch! (:: :process/finish pid) sid
                js/console.error "|[TERMINA] process error" event
              .on proc |disconnect $ fn (event)
                dispatch!
                  :: :process/error $ [] pid $ str-spaced |disconntect: (str event)
                  , sid
                ; dispatch! (:: :process/finish pid) sid
                js/console.error "|[TERMINA] process error" event
              .on proc |uncaughtExceptionMonitor $ fn (err origin)
                dispatch!
                  :: :process/error $ [] pid $ str err &newline origin
                  , sid
              .on proc |uncaughtException $ fn (err origin)
                dispatch!
                  :: :process/error $ [] pid $ str |uncaughtException: err &newline origin
                  , sid
              .on proc |unhandledRejection $ fn (err origin)
                dispatch!
                  :: :process/error $ [] pid $ str err &newline origin
                  , sid
              .on
                unsafe-coerce (.-stdout proc) EventEmitterHost
                , |data $ fn (data)
                  dispatch!
                    :: :process/stdout $ [] pid $ if (js/Buffer.isBuffer data) (.!toString data) data
                    , sid
              .on
                unsafe-coerce (.-stderr proc) EventEmitterHost
                , |data $ fn (data)
                  dispatch!
                    :: :process/stderr $ [] pid $ if (js/Buffer.isBuffer data) (.!toString data) data
                    , sid
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic 'String
              , 'String
            :features $ #{} :js-ffi
        'env-chunk? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn env-chunk? (chunk)
            let
                pattern $ unsafe-coerce (new js/RegExp |^\w+=) RegExpHost
              .test pattern chunk
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'kill-process! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn kill-process! (pid dispatch! sid)
            let
                proc $ get @*registry pid
              if (some? proc)
                do (eprintln "|[kill] process" proc) (.!kill proc |SIGTERM)
                do (eprintln "|[warn] process not found in registry:" pid @*registry)
                  dispatch! (:: :process/finish pid) sid
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic 'String
              , 'String
            :features $ #{} :js-ffi
        'parse-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-command (command)
            let
                chunks $ unsafe-coerce
                  to-calcit-data $ string-argv command
                  :: 'List 'String
                env-chunks $ reduce chunks
                  assert-type ([]) (:: 'List 'String)
                  fn (acc chunk)
                    hint-fn $ {}
                      :args $ [] (:: 'List 'String) 'String
                      :return $ :: 'List 'String
                    if (env-chunk? chunk) (conj acc chunk) acc
                command-chunks $ slice chunks (count env-chunks) (count chunks)
                envs $ reduce env-chunks
                  assert-type
                    {}
                      |PATH $ env-or |PATH |
                      |HOME $ env-or |HOME |
                    :: 'Map 'String 'String
                  fn (acc chunk)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'String 'String) 'String
                      :return $ :: 'Map 'String 'String
                    let[] (k v) (split chunk |=) (assoc acc k v)
              :: :command
                option:unwrap $ nth command-chunks 0
                slice command-chunks 1 $ count command-chunks
                , envs
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'read-bool-field-or $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-bool-field-or (data key fallback)
            match (get data key)
              (:some value) (assert-type value 'Bool)
              (:none) fallback
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag 'Bool
        'read-string-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-string-field (data key)
            match (get data key)
              (:some value) (assert-type value 'String)
              (:none)
                raise $ str |Missing-string-field:- key
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.manager
          :require ([] |child_process :as cp) (|string-argv :default string-argv)
            js-ffi.node :refer $ [] env-or
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def command
            {} (:id nil) (:title |) (:path |.) (:code |)
          :examples $ []
          :schema $ :: 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ do session $ {}
              :users $ do user $ {}
              :processes $ do process $ {}
              :workflows $ do workflow $ {}
              :histories $ do history $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def history
            {} (:id nil) (:pid 0) (:started-at 0) (:cwd |) (:command |)
          :examples $ []
          :schema $ :: 'Dynamic
        'page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def page
            {} (:id nil) (:title |) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'process $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def process
            {} (:title |) (:pid 0)
              :content $ []
              :started-at 0
              :alive? false
              :cwd |
              :command |
          :examples $ []
          :schema $ :: 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
              :enlarge-view nil
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def workflow
            {} (:id nil) (:name nil) (:base-dir |~/)
              :commands $ do command $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'String 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            let
                found? $ fs/existsSync storage-file
                loaded $ if found?
                  decode-map-as
                    parse-cirru-edn $ fs/readFileSync storage-file |utf8
                    :: 'Map 'Tag 'Dynamic
                  assert-type ({}) (:: 'Map 'Tag 'Dynamic)
              if found? (println |Found-local-EDN-data) (println |Found-no-data)
              merge-dynamic schema/database loaded
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*loop-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *loop-trigger 0
          :examples $ []
          :schema $ :: 'Ref 'Number
        '*proxied-dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *proxied-dispatch! dispatch!
          :examples $ []
          :schema $ :: 'Ref $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'String
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'StringPromiseHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StringPromiseHost
            .then $ :: 'Fn $ {}
              :args $ [] StringPromiseHost $ :: 'Fn
                {}
                  :args $ [] 'String
                  :return 'Unit
              :return StringPromiseHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :then |then
          :schema $ :: 'Trait
        'check-version! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-version! ()
            let
                pkg $ assert-type
                  to-calcit-data $ js/JSON.parse $ fs/readFileSync
                    path/join
                      fileURLToPath $ new js/URL |. js/import.meta.url
                      , |../package.json
                  :: 'Map 'String 'Dynamic
                version $ assert-type
                  option:unwrap $ get pkg |version
                  , 'String
                package-name $ assert-type
                  option:unwrap $ get pkg |name
                  , 'String
                version-promise $ unsafe-coerce (latest-version package-name) StringPromiseHost
              .then version-promise $ fn (npm-version)
                if (= npm-version version) (println |Running-latest-version version)
                  println $ str |New-version- npm-version |-available,-current-one-is- version |.-Please-upgrade!\n\nyarn-global-add-termina\n
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ unsafe-coerce (nanoid) 'String
                op-time $ unsafe-coerce (js/Date.now) 'Number
              if config/dev? $ println |Dispatch! (str op) sid
              try
                match op
                  (:effect/persist) (persist-db!)
                  (:effect/run d) (create-process! d dispatch! sid)
                  (:effect/kill d) (kill-process! d dispatch! sid)
                  _ $ reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
                fn (error) (js/console.error error)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'String
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                port $ unsafe-coerce
                  js/parseInt $ env-or |port $ str (:port config/site)
                  , 'Number
                ui-url $ str |http://termina.mvc-works.org/?port= port
              run-server! port
              println |Server-started.-Open-UI-on- ui-url
            render-loop! *loop-trigger
            js/process.on |SIGINT on-exit!
            flipped js/setInterval 60000 $ fn () $ persist-db!
            check-version!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! (code _) (persist-db!)
            println "|termina exit code is:" $ to-lispy-string code
            js/process.exit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ ->
                  assert-type (:db @*reel) (:: 'Map 'Tag 'Dynamic)
                  assoc :sessions $ {}
                  update :processes $ fn (processes)
                    filter-map-kv
                      unsafe-coerce processes $ :: 'Map 'String 'Dynamic
                      fn (k v)
                        hint-fn $ {}
                          :args $ [] 'String 'Dynamic
                          :return $ :: 'MapEntryDecision 'String 'Dynamic
                        %:: MapEntryDecision :keep k $ assoc
                          unsafe-coerce v $ :: 'Map 'Tag 'Dynamic
                          , :alive? false
              write-mildly! storage-file file-content
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated.") (clear-twig-caches!) (reset! *proxied-dispatch! dispatch!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            js/clearTimeout @*loop-trigger
            render-loop! *loop-trigger
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! (*loop)
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            reset! *loop $ unsafe-coerce
              flipped js/setTimeout 200 $ fn () $ render-loop! *loop
              , 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Ref 'Number
            :features $ #{} :js-ffi
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! port $ {}
              :on-open $ fn (sid socket)
                @*proxied-dispatch! (:: :session/connect) sid
                println "|New client."
              :on-data $ fn (sid action) (@*proxied-dispatch! action sid)
              :on-close $ fn (sid event) (println "|Client closed!")
                @*proxied-dispatch! (:: :session/disconnect) sid
              :on-error $ fn (error) (js/console.error error)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.server/NodeWebSocketServerHost)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            path/join js/process.env.HOME |.config $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid socket)
              let
                  db $ assert-type (:db reel) (:: 'Map 'Tag 'Dynamic)
                  records $ :records reel
                  session $ assert-type
                    option:unwrap-or
                      get-in db $ [] :sessions sid
                      {}
                    :: 'Map 'Tag 'Dynamic
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'cumulo-reel.core/ReelState
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require ([] app.schema :as schema)
            [] app.updater :refer $ [] updater
            [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
            [] |node:fs :as fs
            [] |child_process :as cp
            [] |node:path :as path
            [] |latest-version :default latest-version
            [] |chalk :default chalk
            |node:url :refer $ fileURLToPath
            [] app.config :as config
            [] cumulo-util.file :refer $ [] write-mildly!
            [] app.twig.container :refer $ [] twig-container
            [] recollect.diff :refer $ [] diff-twig
            [] recollect.twig :refer $ [] render-twig clear-twig-caches!
            [] ws-edn.server :refer $ [] wss-serve! wss-send! wss-each!
            [] app.manager :refer $ [] create-process! kill-process!
            [] |url-parse :default url-parse
            |nanoid :refer $ nanoid
            js-ffi.node :refer $ [] env-or
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            merge ui/button $ {} $ :background-color :transparent
          :examples $ []
          :schema $ :: 'Dynamic
        'css-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-button
            {}
              |button$0 $ {} $ :background-color :transparent
              |button$0:hover $ {} $ :background-color
                hsl 0 0 100 $ %some 0.06
          :examples $ []
          :schema $ :: 'Dynamic
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def input
            merge ui/input $ {} $ :width 320
          :examples $ []
          :schema $ :: 'Dynamic
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
              :margin "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        'text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def text
            {} (:padding "|0 8px") (:line-height |24px) (:min-height 24) (:display :inline-block) (:color :white)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            respo.css :refer $ defstyle
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                user-id $ option:unwrap-or (get session :user-id) nil
                logged-in? $ option:some? $ get session :user-id
                router $ assert-type
                  option:unwrap-or (get session :router) ({})
                  :: 'Map 'Tag 'Dynamic
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
                workflows $ assert-type
                  option:unwrap-or (get db :workflows) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                processes $ assert-type
                  option:unwrap-or (get db :processes) ({})
                  :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                histories $ assert-type
                  option:unwrap-or (get db :histories) []
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              merge-dynamic base-data $ assert-type
                if logged-in?
                  {}
                    :user $ twig-user $ option:unwrap-or
                      get-in db $ [] :users user-id
                      {}
                    :router $ assoc router :data $ case-default
                      option:unwrap-or (get router :name) nil
                      {}
                      :history $ {} $ :histories histories
                      :workflows $ {} $ :workflows workflows
                      :home $ {} (:processes processes) (:workflows workflows)
                        :enlarge-view $ option:unwrap-or (get session :enlarge-view) false
                      :process $ let
                          process-id $ assert-type
                            option:unwrap $ get-in router $ [] :params :id
                            , 'Number
                        {}
                          :detail $ option:unwrap-or (get processes process-id)
                            assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                          :dict $ filter-map-kv processes $ fn (k v)
                            hint-fn $ {}
                              :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
                              :return $ :: 'MapEntryDecision 'Number $ :: 'Map 'Tag 'Dynamic
                            %:: MapEntryDecision :keep k $ dissoc v :content
                      :profile $ twig-members
                        assert-type
                          option:unwrap-or (get db :sessions) ({})
                          :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                        assert-type
                          option:unwrap-or (get db :users) ({})
                          :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    :count $ count $ option:unwrap-or (get db :sessions) ({})
                    :color $ color/randomColor
                  {}
                :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
              :: 'List $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (k session)
              hint-fn $ {}
                :args $ [] 'String $ :: 'Map 'Tag 'Dynamic
                :return $ :: 'MapEntryDecision 'String 'String
              let
                  uid $ assert-type
                    option:unwrap $ get session :user-id
                    , 'String
                  user $ option:unwrap $ get users uid
                  name $ assert-type
                    option:unwrap-or (get user :name) |unknown
                    , 'String
                %:: MapEntryDecision :keep k name
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'String 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            [] app.twig.user :refer $ [] twig-user
            [] |randomcolor :as color
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
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
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
            [] app.updater.process :as process
            [] app.updater.workflow :as workflow
    'app.updater.process $ %{} 'FileEntry
      :defs $ {}
        'change-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change-command (db pid next sid op-id op-time)
            assoc-in db ([] :processes pid :command) next
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear (db op-data sid op-id op-time)
            update db :processes $ fn (processes)
              -> processes $ filter $ fn (pair)
                let
                    proc $ option:unwrap-or (last pair) nil
                  option:unwrap-or (get proc :alive?) false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'clear-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-history (db op-data sid op-id op-time)
            assoc db :histories $ []
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db op-data sid op-id op-time)
            let
                new-history $ merge schema/history $ {}
                  :command $ option:unwrap-or (get op-data :command) nil
                  :cwd $ option:unwrap-or (get op-data :cwd) nil
                  :started-at op-time
                  :id op-id
                  :title $ option:unwrap-or (get op-data :title) nil
              -> db
                assoc-in
                  [] :processes $ option:unwrap-or (get op-data :pid) nil
                  merge-dynamic schema/process
                    assert-type op-data $ :: 'Map 'Tag 'Dynamic
                    {} (:started-at op-time) (:alive? true)
                update :histories $ fn (histories)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Dynamic
                  conj
                    assert-type histories $ :: 'List $ :: 'Map 'Tag 'Dynamic
                    , new-history
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn error (db op-data sid op-id op-time)
            let-sugar
                  [] pid data
                  , op-data
              update-in db ([] :processes pid :content)
                fn (content)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
                  conj
                    option:unwrap-or content $ assert-type ([])
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    {} (:type :error) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'finish $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn finish (db op-data sid op-id op-time)
            assoc-in db ([] :processes op-data :alive?) false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-dead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-dead (db op-data sid op-id op-time)
            if
              not $ option:unwrap-or
                get-in db $ [] :processes op-data :alive?
                , false
              dissoc-in db $ [] :processes op-data
              , db
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'shorten-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn shorten-content (db op-data sid op-id op-time)
            update-in db ([] :processes op-data)
              fn (process)
                hint-fn $ {}
                  :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                  :return $ :: 'Map 'Tag 'Dynamic
                assoc
                  option:unwrap-or process $ assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                  , :content $ assert-type ([])
                    :: 'List $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'stderr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stderr (db op-data sid op-id op-time)
            let-sugar
                  [] pid data
                  , op-data
              update-in db ([] :processes pid :content)
                fn (content)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
                  conj
                    option:unwrap-or content $ assert-type ([])
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    {} (:type :stderr) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'stdout $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stdout (db op-data sid op-id op-time)
            let-sugar
                  [] pid data
                  , op-data
              update-in db ([] :processes pid :content)
                fn (content)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
                  conj
                    option:unwrap-or content $ assert-type ([])
                      :: 'List $ :: 'Map 'Tag 'Dynamic
                    {} (:type :stdout) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.process
          :require ([] app.schema :as schema)
            [] medley.core :refer $ [] dissoc-in
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'enlarge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn enlarge (db d sid op-id op-time)
            assoc-in db ([] :sessions sid :enlarge-view) d
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            let
                op-map $ assert-type op-data $ :: 'Map 'Tag 'Dynamic
                message-id $ assert-type
                  option:unwrap $ get op-map :id
                  , 'String
              assert-type
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    hint-fn $ {}
                      :args $ [] $ :: 'Option (:: 'Map 'String 'Dynamic)
                      :return $ :: 'Map 'String 'Dynamic
                    dissoc
                      option:unwrap-or messages $ assert-type ({}) (:: 'Map 'String 'Dynamic)
                      , message-id
                :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ [] app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ ->
                  assert-type
                    option:unwrap-or (get db :users) ({})
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  vals
                  , &set:to-list $ find
                    fn (user)
                      hint-fn $ {}
                        :args $ [] $ :: 'Map 'Tag 'Dynamic
                        :return 'Bool
                      and $ = username $ option:unwrap-or (get user :name) nil
                user $ option:unwrap-or maybe-user nil
              update-in db ([] :sessions sid)
                fn (session)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                    :return $ :: 'Map 'Tag 'Dynamic
                  let
                      session' $ option:unwrap-or session $ assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                    if (option:some? maybe-user)
                      if
                        = (md5 password)
                          option:unwrap-or (get user :password) nil
                        assoc session' :user-id $ option:unwrap-or (get user :id) nil
                        update session' :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update session' :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  &set:to-list $ vals $ assert-type
                    option:unwrap-or (get db :users) ({})
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  fn (user)
                    hint-fn $ {}
                      :args $ [] $ :: 'Map 'Tag 'Dynamic
                      :return 'Bool
                    = username $ option:unwrap-or (get user :name) nil
              if (option:some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    hint-fn $ {}
                      :args $ [] $ :: 'Option (:: 'Map 'String 'Dynamic)
                      :return $ :: 'Map 'String 'Dynamic
                    assoc
                      option:unwrap-or messages $ assert-type ({}) (:: 'Map 'String 'Dynamic)
                      , op-id $ {} (:id op-id)
                        :text $ str |Name-is-taken:- username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            [] app.util :refer $ [] find-first
            [] |md5 :default md5
    'app.updater.workflow $ %{} 'FileEntry
      :defs $ {}
        'add-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-command (db op-data sid op-id op-time)
            let-sugar
                  {} workflow-id draft
                  , op-data
              assoc-in db ([] :workflows workflow-id :commands op-id)
                merge-dynamic
                  assert-type draft $ :: 'Map 'Tag 'Dynamic
                  {} $ :id op-id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'create-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-workflow (db op-data sid op-id op-time)
            let
                workflow-name $ option:unwrap-or (get op-data :name) |
                base-dir $ option:unwrap-or (get op-data :base-dir) |~/
              assoc-in db ([] :workflows op-id)
                merge schema/workflow $ {} (:id op-id) (:name workflow-name) (:base-dir base-dir)
                  :commands $ {} $ op-id
                    merge schema/command $ {} (:id op-id) (:title workflow-name) (:path base-dir) (:code "|echo nothing yet")
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'edit-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn edit-command (db op-data sid op-id op-time)
            let-sugar
                  [] workflow-id command-id changes
                  , op-data
              update-in db ([] :workflows workflow-id :commands command-id)
                fn (command)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                    :return $ :: 'Map 'Tag 'Dynamic
                  merge-dynamic
                    option:unwrap-or command $ assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                    assert-type changes $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'edit-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn edit-workflow (db op-data sid op-id op-time)
            let
                new-workflow $ assert-type op-data $ :: 'Map 'Tag 'Dynamic
              update-in db
                [] :workflows $ option:unwrap-or (get new-workflow :id) nil
                fn (workflow)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                    :return $ :: 'Map 'Tag 'Dynamic
                  merge-dynamic
                    option:unwrap-or workflow $ assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                    , new-workflow
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-command (db op-data sid op-id op-time)
            let-sugar
                  [] workflow-id command-id
                  , op-data
              update-in db ([] :workflows workflow-id :commands)
                fn (commands)
                  hint-fn $ {}
                    :args $ [] $ :: 'Option (:: 'Map 'String 'Dynamic)
                    :return $ :: 'Map 'String 'Dynamic
                  dissoc
                    option:unwrap-or commands $ assert-type ({}) (:: 'Map 'String 'Dynamic)
                    assert-type command-id 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-workflow (db op-data sid op-id op-time)
            let
                workflow-id op-data
              update db :workflows $ fn (workflows) (dissoc workflows workflow-id)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'String 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.workflow
          :require $ [] app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'find-first $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-first (f xs)
            reduce
              fn (_ x)
                when (f x) (reduced x)
              , nil xs
          :examples $ []
          :schema $ :: 'Dynamic
        'join-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn join-path (xs ys)
            if
              =
                option:unwrap-or (first ys) nil
                , |/
              , ys $ let
                  absolute? $ =
                    option:unwrap-or (first xs) nil
                    , |/
                  new-path $ join-segments ([])
                    concat (split xs |/) (split ys |/)
                if absolute? (str |/ new-path) new-path
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
        'join-segments $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn join-segments (acc xs)
            if (empty? xs) (join-str acc |/)
              let
                  cursor $ option:unwrap-or (first xs) |
                  next-acc $ cond
                      = cursor |.
                      , acc
                    (= cursor |..) (butlast acc)
                    (= cursor |) acc
                    true $ conj acc cursor
                recur next-acc $ rest xs
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] (:: 'List 'String) (:: 'List 'String)
        'log-js! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-js! (& args)
            apply js/console.log $ map
              fn (x)
                if (coll? x) (clj->js x) x
              , args
          :examples $ []
          :schema $ :: 'Dynamic
        'map-val $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-val (f xs)
            assert
              or (map? xs) (seq? xs)
              , "|map-val deals maps"
            ->> xs $ map $ fn
                [] k x
              [] k $ f x
          :examples $ []
          :schema $ :: 'Dynamic
        'map-with-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-with-index (f xs)
            ->> xs $ map-indexed $ fn (idx x)
              [] idx $ f x
          :examples $ []
          :schema $ :: 'Dynamic
        'test-join-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-join-path! ()
            println $ pr-str $ join-path | |
            println $ pr-str $ join-path |/ |
            println $ pr-str $ join-path | |/
            println $ pr-str $ join-path |a |b
            println $ pr-str $ join-path |a |../b
            println $ pr-str $ join-path |a |./b
            println $ pr-str $ join-path |a/ |./b
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ [] clojure.string :as string
