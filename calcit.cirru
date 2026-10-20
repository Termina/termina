
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.server/main!) (:mode :js) (:reload-fn 'app.server/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |recollect/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/ |js-ffi/
      :type-slots $ {}
    :page $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
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
                decode-map-as
                  .unwrap $ get op 0
                  , 'Tag
                , :states
              println |Dispatch op
            match op
              (:states cursor s)
                reset! *states $ decode-map-as
                  update-states @*states
                    decode-map-as cursor $ :: 'List 'Dynamic
                    , s
                  :: 'Map 'Tag 'Dynamic
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
            add-watch! *store :changes $ fn (s p) (render-app!)
            add-watch! *states :changes $ fn (s p) (render-app!)
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
            option:unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
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
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.browser/EventHost
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (js-present? client-errors) (js-present? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store prev) (render-app!)
                add-watch! *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target
              comp-container
                decode-map-as
                  .unwrap $ get @*states :states
                  :: 'Map 'Tag 'Dynamic
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
                  str $ assert-type (:port config/site) 'Number
              str |ws:// host |: port
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ storage-get $ assert-type (:storage-key config/site) 'String
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
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
            js-ffi.browser :refer $ EventHost add-event-listener! location-href storage-get
            respo.ffi.browser :as respo-browser
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
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'Dynamic
                        :rest 'Dynamic
                        :return 'Unit
                    :return 'Unit
                  &doseq
                    command $ .to-list $ .distinct-values
                      decode-map-as
                        option:unwrap-or (get workflow :commands) ({})
                        :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    d! $ :: :effect/run $ {}
                      :command $ decode-map-as
                        .unwrap $ get command :code
                        , 'String
                      :cwd $ join-path
                        decode-map-as
                          .unwrap $ get workflow :base-dir
                          , 'String
                        decode-map-as
                          .unwrap $ get command :path
                          , 'String
                      :title $ option:unwrap-or (get command :title) nil
                  , &unit
              <> $ decode-map-as
                .unwrap $ get workflow :name
                , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'comp-command-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-command-editor (states base-command on-submit)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ decode-map-as
                  or
                    option:unwrap-or (get states :data) nil
                    if (option:some? base-command)
                      select-keys (option:unwrap base-command) ([] :code :path :title)
                      {} (:title |) (:code |) (:path |./)
                  :: 'Map 'Tag 'String
              div
                {} $ :style $ merge ui/column
                  {} $ :padding "|0 16px 16px"
                div ({})
                  <> |Command $ {} (:font-size 16) (:font-family ui/font-fancy)
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ .unwrap $ get state :title
                  :placeholder |title...
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :rest 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :states cursor $ assoc state :title
                      decode-map-as
                        .unwrap $ get e :value
                        , 'String
                    , &unit
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ .unwrap $ get state :code
                  :placeholder "|Command code"
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :rest 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :states cursor $ assoc state :code
                      decode-map-as
                        .unwrap $ get e :value
                        , 'String
                    , &unit
                =< nil 8
                input $ {}
                  :style $ merge ui/input $ {} (:width 320) (:font-family ui/font-code)
                  :value $ .unwrap $ get state :path
                  :placeholder "|Command path"
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :rest 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :states cursor $ assoc state :path
                      decode-map-as
                        .unwrap $ get e :value
                        , 'String
                    , &unit
                =< nil 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  button
                    {} (:style style/button)
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        on-submit state d!
                        d! $ :: :states cursor nil
                        , &unit
                    <> |Submit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] (:: 'Map 'Tag 'String)
                  :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                    :args $ [] 'Dynamic
        'comp-command-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-command-row (states command workflow-id)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ decode-map-as
                  either
                    option:unwrap-or (get states :data) nil
                    {} $ :pop? false
                  :: 'Map 'Tag 'Bool
                remove-plugin $ use-confirm (>> states :remove) ({})
              div
                {} $ :style style-command-row
                div
                  {} $ :style ui/row-parted
                  div
                    {} $ :style ui/row-middle
                    <>
                      decode-map-as
                        or
                          option:unwrap-or (get command :title) nil
                          , |Task
                        , 'String
                      {} $ :font-size 20
                    =< 8 nil
                    comp-icon :play
                      {} (:font-size 14) (:cursor :pointer)
                        :color $ hsl 200 80 70
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :effect/run $ {}
                          :cwd $ decode-map-as
                            .unwrap $ get command :path
                            , 'String
                          :command $ decode-map-as
                            .unwrap $ get command :code
                            , 'String
                          :title $ option:unwrap-or (get command :title) nil
                        , &unit
                  div
                    {} $ :style ui/row-parted
                    comp-icon :edit-2
                      &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :pop? true
                        , &unit
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          hint-fn $ {}
                            :args $ [] $ :: 'Fn
                              {}
                                :args $ [] $ :: 'Fn
                                  {}
                                    :args $ [] 'Dynamic
                                    :rest 'Dynamic
                                    :return 'Unit
                                :return 'Unit
                            :return 'respo.schema/Component
                          comp-command-editor
                            decode-map-as (>> states :edit-command) (:: 'Map 'Tag 'Dynamic)
                            %some $ decode-map-as command $ :: 'Map 'Tag 'Dynamic
                            fn (command-draft d!)
                              hint-fn $ {}
                                :args $ [] (:: 'Map 'Tag 'String)
                                  :: 'Fn $ {}
                                    :args $ [] 'Dynamic
                                    :rest 'Dynamic
                                    :return 'Unit
                                :return 'Unit
                              d! $ :: :workflow/edit-command $ [] workflow-id
                                decode-map-as
                                  .unwrap $ get command :id
                                  , 'String
                                , command-draft
                              on-close d!
                              , &unit
                      .unwrap $ get state :pop?
                      fn (d!)
                        hint-fn $ {}
                          :args $ [] $ :: 'Fn
                            {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :pop? false
                        , &unit
                    =< 8 nil
                    comp-icon :x
                      &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        .show remove-plugin d! $ fn ()
                          hint-fn $ {}
                            :args $ []
                            :return 'Unit
                          d! $ :: :workflow/remove-command $ [] workflow-id
                            decode-map-as
                              .unwrap $ get command :id
                              , 'String
                          , &unit
                        , &unit
                div
                  {} $ :style $ merge ui/row-middle
                    {} $ :font-family ui/font-code
                  <>
                    decode-map-as
                      .unwrap $ get command :path
                      , 'String
                    {} (:display :inline-block)
                      :background-color $ hsl 0 0 100 $ %some 0.2
                      :padding "|0 8px"
                  =< 24 nil
                  <>
                    decode-map-as
                      .unwrap $ get command :code
                      , 'String
                    {}
                      :background-color $ hsl 0 0 100 $ %some 0.2
                      :padding "|0 8px"
                      :display :inline-block
                      :min-width 320
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic) 'String
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
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> span div input button a
            respo.comp.space :refer $ =<
            feather.core :refer $ comp-i comp-icon
            respo-alerts.core :refer $ use-confirm comp-modal
            app.style :as style
            app.util :refer $ join-path
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'StoreView $ %{} 'CodeEntry (:doc "|页面只读投影；不替代网络原 Map，不丢弃 patch 中未展示的扩展字段。")
          :code $ quote $ defstruct StoreView (:logged-in? 'Bool)
            :session $ :: 'Map 'Tag 'Dynamic
            :reel-length 'Number
            :router $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :user $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :count $ :: 'Option 'Number
            :color $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'List
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            if (nil? store) (comp-offline)
              let
                  view $ decode-view store
                div
                  {} $ :class-name $ str-spaced css/global css/fullscreen css/column css-container
                  comp-navigation (:logged-in? view) (:router view) (:count view)
                  if (:logged-in? view)
                    let
                        router $ .unwrap $ :router view
                        router-data $ .unwrap $ get router :data
                      case-default
                        decode-map-as
                          .unwrap $ get router :name
                          , 'Tag
                        comp-missing router
                        :profile $ comp-profile
                          .unwrap $ :user view
                          decode-map-as router-data $ :: 'Map 'String 'String
                        :home $ comp-home
                          decode-map-as (>> states :home) (:: 'Map 'Tag 'Dynamic)
                          decode-map-as router-data $ :: 'Map 'Tag 'Dynamic
                        :workflows $ comp-workflow-container
                          decode-map-as (>> states :workflows) (:: 'Map 'Tag 'Dynamic)
                          decode-map-as
                            .unwrap $ get
                              decode-map-as router-data $ :: 'Map 'Tag 'Dynamic
                              , :workflows
                            :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                        :history $ comp-history $ decode-map-as
                          .unwrap $ get
                            decode-map-as router-data $ :: 'Map 'Tag 'Dynamic
                            , :histories
                          :: 'List $ :: 'Map 'Tag 'Dynamic
                        :process $ let
                            process $ decode-map-as
                              .unwrap $ get
                                decode-map-as router-data $ :: 'Map 'Tag 'Dynamic
                                , :detail
                              :: 'Map 'Tag 'Dynamic
                          if (empty? process)
                            div ({}) (<> "|Process unavailable")
                            comp-process-detail
                              decode-map-as (>> states :detail) (:: 'Map 'Tag 'Dynamic)
                              , process
                    comp-login $ decode-map-as (>> states :login) (:: 'Map 'Tag 'Dynamic)
                  comp-status-color $ :color view
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    decode-map-as
                      .unwrap-or
                        get (:session view) :messages
                        {}
                      :: 'Map 'String 'Dynamic
                    {}
                    fn (info d!)
                      hint-fn $ {}
                        :args $ [] 'Dynamic $ :: 'Fn
                          {}
                            :args $ [] 'Dynamic
                            :rest 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      d! $ :: :session/remove-message info
                      , &unit
                  when dev? $ comp-reel (:reel-length view) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :rest 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :effect/connect
                    , &unit
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} (:class-name css-status)
              :style $ match color
                (:none) ({})
                (:some value)
                  {} $ :background-color value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'String
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
        'decode-view $ %{} 'CodeEntry (:doc "|在页面入口检查原 Map 投影，只选择实际读取的字段；未展示字段仍留在客户端原始 Store。")
          :code $ quote $ defn decode-view (raw)
            decode-map-as
              .filter-kv
                decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                fn (key value)
                  and
                    .includes? (#{} :logged-in? :session :reel-length :router :user :count :color) key
                    not $ and (nil? value)
                      .includes? (#{} :router :user :count :color) key
              , StoreView
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.container/StoreView)
            :args $ [] 'Dynamic
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
        'HomeState $ %{} 'CodeEntry (:doc "|首页私有查询与弹窗状态，可从旧 Map 解码。")
          :code $ quote $ defstruct HomeState (:query 'String) (:pop? 'Bool)
          :examples $ []
          :schema $ :: 'List
        'comp-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-empty ()
            span $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (states router-data)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ let
                    raw-state $ or
                      option:unwrap-or (get states :data) nil
                      {} (:query |) (:pop? false)
                  decode-map-as
                    if (struct? raw-state) (&struct:to-map raw-state) raw-state
                    , HomeState
                workflows $ decode-map-as
                  .unwrap-or (get router-data :workflows) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                processes $ decode-map-as
                  .unwrap-or (get router-data :processes) ({})
                  :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                raw-enlarge-view $ .unwrap-or (get router-data :enlarge-view) nil
                enlarge-view $ if
                  or (nil? raw-enlarge-view) (= raw-enlarge-view false)
                  Option :none
                  Option :some $ decode-map-as raw-enlarge-view 'Number
              div
                {} $ :class-name $ str-spaced css/expand css/column css-home
                =< nil 8
                div
                  {} $ :class-name $ str-spaced css/expand css/row
                  match enlarge-view
                    (:none) (comp-empty)
                    (:some process-id)
                      match (get processes process-id)
                        (:none) (comp-empty)
                        (:some large-process)
                          comp-process-detail
                            decode-map-as (>> states :enlarge) (:: 'Map 'Tag 'Dynamic)
                            , large-process
                  div
                    {} $ :class-name $ str-spaced css/expand css/column
                    div
                      {} (:class-name css/row-parted)
                        :style $ {} (:align-items :center) (:padding "|0 8px")
                      div
                        {} $ :class-name $ str-spaced css/flex css/row-middle
                        input $ {} (:class-name css-filter) (:placeholder |filter...)
                          :value $ :query state
                          :on-input $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :states cursor $ assoc state :query
                              decode-map-as
                                .unwrap $ get e :value
                                , 'String
                            , &unit
                        list->
                          {}
                            :class-name $ str-spaced css/flex css/row
                            :style $ {} $ :flex-wrap :wrap
                          map
                            sort
                              filter
                                .to-list $ .keys workflows
                                fn (workflow-id)
                                  decode-map-as
                                    .unwrap $ get
                                      parse-by-letter
                                        lower-case $ decode-map-as
                                          .unwrap $ get
                                            .unwrap $ get workflows workflow-id
                                            , :name
                                          , 'String
                                        lower-case $ :query state
                                      , :matches?
                                    , 'Bool
                              fn (left-id right-id)
                                .compare
                                  decode-map-as
                                    .unwrap $ get
                                      .unwrap $ get workflows left-id
                                      , :name
                                    , 'String
                                  decode-map-as
                                    .unwrap $ get
                                      .unwrap $ get workflows right-id
                                      , :name
                                    , 'String
                            fn (workflow-id)
                              [] workflow-id $ comp-command-button $ .unwrap (get workflows workflow-id)
                      div
                        {} $ :class-name css/row-middle
                        button $ {}
                          :class-name $ str-spaced css/button style/css-button
                          :inner-text |Run
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :states cursor $ assoc state :pop? true
                            , &unit
                        comp-modal
                          {} (:title |Demo)
                            :style $ {} $ :width 400
                            :container-style $ {}
                            :render $ fn (on-close)
                              hint-fn $ {}
                                :args $ [] $ :: 'Fn
                                  {}
                                    :args $ [] $ :: 'Fn
                                      {}
                                        :args $ [] 'Dynamic
                                        :rest 'Dynamic
                                        :return 'Unit
                                    :return 'Unit
                                :return 'respo.schema/Component
                              comp-command-editor
                                decode-map-as (>> states :quick-run) (:: 'Map 'Tag 'Dynamic)
                                %none
                                fn (draft d!)
                                  hint-fn $ {}
                                    :args $ [] (:: 'Map 'Tag 'String)
                                      :: 'Fn $ {}
                                        :args $ [] 'Dynamic
                                        :rest 'Dynamic
                                        :return 'Unit
                                    :return 'Unit
                                  d! $ :: :effect/run $ {}
                                    :command $ .unwrap $ get draft :code
                                    :cwd $ .unwrap $ get draft :path
                                    :title $ .unwrap $ get draft :title
                                  on-close d!
                                  , &unit
                          :pop? state
                          fn (d!)
                            hint-fn $ {}
                              :args $ [] $ :: 'Fn
                                {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :states cursor $ assoc state :pop? false
                            , &unit
                        =< 8 nil
                        button $ {}
                          :class-name $ str-spaced css/button style/css-button
                          :inner-text "|Kill all"
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            &doseq
                              pid $ .to-list $ .keys
                                decode-map-as
                                  option:unwrap-or (get router-data :processes) ({})
                                  :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                              d! $ :: :effect/kill pid
                            , &unit
                        =< 8 nil
                        a
                          {} (:class-name css/link)
                            :on-click $ fn (e d!)
                              hint-fn $ {}
                                :args $ [] (:: 'Map 'Tag 'Dynamic)
                                  :: 'Fn $ {}
                                    :args $ [] 'Dynamic
                                    :rest 'Dynamic
                                    :return 'Unit
                                :return 'Unit
                              d! $ :: :process/clear nil
                              , &unit
                          <> |Clear
                    list->
                      {} $ :class-name $ str-spaced css/flex css-process-list
                      map
                        sort
                          filter
                            .to-list $ .keys processes
                            fn (pid)
                              not= (Option :some pid) enlarge-view
                          fn (left-id right-id)
                            let
                                left-process $ .unwrap $ get processes left-id
                                right-process $ .unwrap $ get processes right-id
                                left-alive? $ decode-map-as
                                  .unwrap $ get left-process :alive?
                                  , 'Bool
                                right-alive? $ decode-map-as
                                  .unwrap $ get right-process :alive?
                                  , 'Bool
                              if (= left-alive? right-alive?)
                                if left-alive?
                                  -
                                    decode-map-as
                                      .unwrap $ get left-process :started-at
                                      , 'Number
                                    decode-map-as
                                      .unwrap $ get right-process :started-at
                                      , 'Number
                                  -
                                    decode-map-as
                                      .unwrap $ get right-process :started-at
                                      , 'Number
                                    decode-map-as
                                      .unwrap $ get left-process :started-at
                                      , 'Number
                                if left-alive? -1 1
                        fn (pid)
                          [] pid $ comp-process $ .unwrap (get processes pid)
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
            app.util :refer $ join-path
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
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ decode-map-as
                  or
                    option:unwrap-or (get states :data) nil
                    , initial-state
                  :: 'Map 'Tag 'String
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ .unwrap $ get state :username
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :rest 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ assoc state :username
                            decode-map-as
                              .unwrap $ get e :value
                              , 'String
                          , &unit
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ .unwrap $ get state :password
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :rest 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ assoc state :password
                            decode-map-as
                              .unwrap $ get e :value
                              , 'String
                          , &unit
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge style/link
                      :on-click $ on-submit
                        .unwrap $ get state :username
                        .unwrap $ get state :password
                        , true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge style/link
                      :on-click $ on-submit
                        .unwrap $ get state :username
                        .unwrap $ get state :password
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
              dispatch! $ if signup?
                :: :user/sign-up $ [] username password
                :: :user/log-in $ [] username password
              storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                  :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.style :as style
            app.config :as config
            js-ffi.browser :refer $ storage-set!
    'app.comp.missing $ %{} 'FileEntry
      :defs $ {} $ 'comp-missing
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-missing (router)
            div ({}) (<> "|Page missing")
              div
                {} $ :style $ {} (:font-family ui/font-code)
                <> $ str router
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.missing
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> span div
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
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :rest 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :router/change $ {} (:name :profile)
                    , &unit
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ match count-members
                  (:none) |
                  (:some n) (to-string n)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              :: 'Option 'Number
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
                :style $ merge style-logo $ if
                  match router
                    (:none) false
                    (:some data)
                      = router-name $ decode-map-as
                        .unwrap $ get data :name
                        , 'Tag
                  {} $ :color :white
                  {}
                :on-click $ fn (e d!)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'Dynamic
                        :rest 'Dynamic
                        :return 'Unit
                    :return 'Unit
                  d! $ :: :router/change $ {} (:name router-name)
                  , &unit
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              , 'Tag 'String
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
            let
                content $ decode-map-as
                  .unwrap $ get process :content
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              div
                {} $ :class-name css-process
                div
                  {} (:class-name css-title-bar)
                    :style $ if
                      decode-map-as
                        .unwrap $ get process :alive?
                        , 'Bool
                      {} $ :background-color $ hsl 50 100 60
                  div
                    {} $ :class-name css/row-middle
                    <>
                      decode-map-as
                        or
                          option:unwrap-or (get process :title) nil
                          , |Task
                        , 'String
                      merge style/text $ {} $ :color :black
                  div
                    {} $ :class-name css/row-middle
                    button $ {} (:class-name css/button)
                      :style $ {}
                        :background $ hsl 0 0 0 $ %some 0.1
                        :color :white
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :session/enlarge $ decode-map-as
                          .unwrap $ get process :pid
                          , 'Number
                        , &unit
                      :inner-text |Enlarge
                    ; =< 8 nil
                    ; a $ {} (:class-name css/link)
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :process)
                          :params $ {} $ :id
                            option:unwrap-or (get process :pid) nil
                      :inner-text |View
                    if
                      decode-map-as
                        .unwrap $ get process :alive?
                        , 'Bool
                      a
                        {} (:class-name css-link-kill)
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :effect/kill $ decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , &unit
                        <> |Kill
                      a $ {} (:style style/link) (:inner-text |Redo)
                        :on-click $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :rest 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :effect/run $ {}
                            :cwd $ decode-map-as
                              .unwrap $ get process :cwd
                              , 'String
                            :command $ decode-map-as
                              .unwrap $ get process :command
                              , 'String
                            :title $ option:unwrap-or (get process :title) nil
                          d! $ :: :process/remove-dead $ decode-map-as
                            .unwrap $ get process :pid
                            , 'Number
                          , &unit
                div
                  {} $ :class-name $ str-spaced css/expand css-process-log
                  <>
                    decode-map-as
                      .unwrap $ get process :command
                      , 'String
                    merge style/text
                  =< 8 nil
                  <>
                    decode-map-as
                      .unwrap $ get process :cwd
                      , 'String
                    merge style/text $ {} $ :color (hsl 0 0 60)
                if-not (empty? content)
                  list->
                    {} $ :class-name css-content-list
                    -> content (take-last 4)
                      map-indexed $ fn (idx chunk)
                        [] idx $ let
                            urls $ find-urls $ decode-map-as
                              .unwrap $ get chunk :data
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
                              decode-map-as
                                .unwrap $ get chunk :data
                                , 'String
                              {}
                                :color $ case-default
                                  decode-map-as
                                    .unwrap $ get chunk :type
                                    , 'Tag
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
                matched $ .!match text $ new js/RegExp |https?://\S+ |g
              if (js-nullish? matched) ([])
                decode-map-as (to-calcit-data matched) (:: 'List 'String)
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
            respo-alerts.core :refer $ comp-alerts
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.comp.process-detail $ %{} 'FileEntry
      :defs $ {}
        'DetailState $ %{} 'CodeEntry (:doc "|详情页私有筛选状态；可从旧 Map 解码，初始值沿用原页面，不改变服务数据格式。")
          :code $ quote $ defstruct DetailState (:filter 'String) (:filter? 'Bool) (:wrap? 'Bool) (:all-log? 'Bool) (:hide-thread-info? 'Bool)
          :examples $ []
          :schema $ :: 'List
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
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ let
                    raw-state $ either
                      option:unwrap-or (get states :data) nil
                      {} (:filter |) (:filter? true) (:wrap? true) (:all-log? false) (:hide-thread-info? false)
                  decode-map-as
                    if (struct? raw-state) (&struct:to-map raw-state) raw-state
                    , DetailState
                content $ decode-map-as
                  .unwrap $ get process :content
                  :: 'List $ :: 'Map 'Tag 'Dynamic
                command-plugin $ use-prompt (>> states :command)
                  {} (:text "|change command")
                    :initial $ decode-map-as
                      .unwrap $ get process :command
                      , 'String
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
                      :checked $ :filter? state
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :filter?
                          not $ :filter? state
                        , &unit
                    if (:filter? state)
                      input $ {} (:class-name css-filter)
                        :value $ :filter state
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Dynamic
                                :rest 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ assoc state :filter
                            decode-map-as
                              .unwrap $ get e :value
                              , 'String
                          , &unit
                        :placeholder |filter...
                      <> |Filter...
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ :all-log? state
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :all-log?
                          not $ :all-log? state
                        , &unit
                    <> "|All log?"
                    comp-icon :arrow-down
                      {} (:font-size 14) (:class-name css-down-icon)
                        :color $ hsl 0 0 80
                      , on-scroll-down!
                    if-not (empty? content)
                      a
                        {}
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :process/shorten-content $ decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , &unit
                          :style style/link
                        <> |Clear
                    =< 8 nil
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ :hide-thread-info? state
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :hide-thread-info?
                          not $ :hide-thread-info? state
                        , &unit
                    <> |HideThread?
                    input $ {} (:type |checkbox)
                      :style $ {} (:cursor :pointer) (:opacity 0.8)
                      :checked $ :wrap? state
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :wrap?
                          not $ :wrap? state
                        , &unit
                    <> |Wrap?
                  div
                    {} $ :class-name css-toolbar
                    span $ {}
                      :inner-text $ decode-map-as
                        or
                          option:unwrap-or (get process :title) nil
                          , |Task
                        , 'String
                      :class-name css/font-fancy
                      :style $ merge style/text
                        {} $ :padding "|0 8px"
                        decode-map-as
                          if
                            decode-map-as
                              .unwrap $ get process :alive?
                              , 'Bool
                            {} (:color :black) (:border-radius |4px)
                              :background-color $ hsl 60 100 60
                            {}
                          :: 'Map 'Tag 'Dynamic
                      :title $ str
                        decode-map-as
                          .unwrap $ get process :cwd
                          , 'String
                        , &newline $ decode-map-as
                          .unwrap $ get process :command
                          , 'String
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        .show command-plugin d! $ fn (text)
                          hint-fn $ {}
                            :args $ [] 'String
                            :return 'Unit
                          d! $ :: :process/change-command
                            decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , text
                          , &unit
                        , &unit
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
                      decode-map-as
                        .unwrap $ get process :alive?
                        , 'Bool
                      a
                        {} (:class-name css/link)
                          :style $ {} (:color :red) (:border-color :red)
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :effect/kill $ decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , &unit
                          :title $ decode-map-as
                            .unwrap $ get process :command
                            , 'String
                        <> |Kill
                      div ({})
                        a $ {} (:class-name css/link) (:inner-text |Redo)
                          :title $ decode-map-as
                            .unwrap $ get process :command
                            , 'String
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :effect/run $ {}
                              :cwd $ decode-map-as
                                .unwrap $ get process :cwd
                                , 'String
                              :command $ decode-map-as
                                .unwrap $ get process :command
                                , 'String
                              :title $ option:unwrap-or (get process :title) nil
                              :enlarge? true
                            d! $ :: :process/remove-dead $ decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , &unit
                        =< 8 nil
                        a $ {} (:class-name css/link) (:inner-text |Drop)
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Dynamic
                                  :rest 'Dynamic
                                  :return 'Unit
                              :return 'Unit
                            d! $ :: :router/change $ {} (:name :home)
                            d! $ :: :process/remove-dead $ decode-map-as
                              .unwrap $ get process :pid
                              , 'Number
                            , &unit
                =< nil 8
                div
                  {} $ :class-name $ str-spaced |scroll-area css-logs-list
                  if
                    not $ empty? process
                    list->
                      {} $ :style $ {}
                        :white-space $ if (:wrap? state) |pre-wrap |pre
                      -> content
                        filter $ fn (chunk)
                          if
                            or
                              not $ :filter? state
                              blank? $ :filter state
                            , true $ .includes?
                              decode-map-as
                                .unwrap $ get chunk :data
                                , 'String
                              :filter state
                        take-last $ if (:all-log? state) 2000 60
                        map-indexed $ fn (idx chunk)
                          [] idx $ span $ {} (:class-name css-log)
                            :style $ if
                              = :stderr $ decode-map-as
                                .unwrap $ get chunk :type
                                , 'Tag
                              {} $ :color :red
                              {}
                            :inner-text $ do
                              if (:hide-thread-info? state)
                                hide-thread-info $ decode-map-as
                                  .unwrap $ get chunk :data
                                  , 'String
                                decode-map-as
                                  .unwrap $ get chunk :data
                                  , 'String
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
            app.style :as style
            respo.css :refer $ defstyle
            feather.core :refer $ comp-icon
            respo-ui.comp :refer $ comp-tabs
            respo-ui.css :as css
            respo-alerts.core :refer $ use-modal-menu use-prompt
            js-ffi.browser :refer $ query-selector DomElementHost
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ decode-map-as
                  .unwrap $ get user :name
                  , 'String
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  map
                    .to-list $ .keys members
                    fn (k)
                      let
                          username $ .unwrap $ get members k
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
                    :on-click $ fn (_e _d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :rest 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      refresh-page!
                      , &unit
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge style/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (_ dispatch!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :rest 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      dispatch! $ :: :user/log-out nil
                      storage-remove! $ :storage-key config/site
                      , &unit
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
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
            app.style :as style
            js-ffi.browser :refer $ LocationHost storage-remove!
    'app.comp.workflow $ %{} 'FileEntry
      :defs $ {}
        'WorkflowListState $ %{} 'CodeEntry
          :doc "|工作流列表私有状态；焦点缺失为 Option :none，不再把 nil 声明为 String。"
          :code $ quote $ defstruct WorkflowListState
            :focused-id $ :: 'Option 'String
            :pop? 'Bool
          :examples $ []
          :schema $ :: 'List
        'comp-workflow-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-container (states workflows)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ let
                    original-state $ or
                      option:unwrap-or (get states :data) nil
                      {} (:focused-id nil) (:base-workflow nil) (:pop? false)
                    state-map $ dissoc
                      if (struct? original-state) (&struct:to-map original-state) original-state
                      , :base-workflow
                  decode-map-as
                    if
                      nil? $ .unwrap-or (get state-map :focused-id) nil
                      dissoc state-map :focused-id
                      , state-map
                    , WorkflowListState
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
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :pop? true
                        , &unit
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          hint-fn $ {}
                            :args $ [] $ :: 'Fn
                              {}
                                :args $ [] $ :: 'Fn
                                  {}
                                    :args $ [] 'Dynamic
                                    :rest 'Dynamic
                                    :return 'Unit
                                :return 'Unit
                            :return 'respo.schema/Component
                          comp-workflow-editor
                            decode-map-as (>> states :editor) (:: 'Map 'Tag 'Dynamic)
                            %none
                            , on-close
                      :pop? state
                      fn (d!)
                        hint-fn $ {}
                          :args $ [] $ :: 'Fn
                            {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :pop? false
                        , &unit
                  =< nil 8
                  list-> ({})
                    map
                      sort
                        .to-list $ .keys workflows
                        fn (left-id right-id)
                          .compare
                            decode-map-as
                              .unwrap $ get
                                .unwrap $ get workflows left-id
                                , :name
                              , 'String
                            decode-map-as
                              .unwrap $ get
                                .unwrap $ get workflows right-id
                                , :name
                              , 'String
                      fn (k)
                        let
                            workflow $ .unwrap $ get workflows k
                          [] k $ div
                            {}
                              :style $ merge style-workflow-entry $ {}
                                :background-color $ if
                                  match (:focused-id state)
                                    (:none) false
                                    (:some focused-id)
                                      =
                                        decode-map-as
                                          .unwrap $ get workflow :id
                                          , 'String
                                        , focused-id
                                  hsl 0 0 100 $ %some 0.2
                                  hsl 0 0 100 $ %some 0
                              :on-click $ fn (e d!)
                                hint-fn $ {}
                                  :args $ [] (:: 'Map 'Tag 'Dynamic)
                                    :: 'Fn $ {}
                                      :args $ [] 'Dynamic
                                      :rest 'Dynamic
                                      :return 'Unit
                                  :return 'Unit
                                d! $ :: :states cursor $ assoc state :focused-id
                                  Option :some $ decode-map-as
                                    .unwrap $ get workflow :id
                                    , 'String
                                , &unit
                            <> $ decode-map-as
                              .unwrap $ get workflow :name
                              , 'String
                div $ {} $ :style
                  {} (:width 1)
                    :background-color $ hsl 0 0 100 $ %some 0.2
                    :margin 16
                div
                  {} $ :style $ merge ui/flex
                    {} $ :padding 8
                  match (:focused-id state)
                    (:none)
                      div ({})
                        <> |Nothing $ {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 70
                          :font-size 20
                          :font-weight 100
                    (:some focused-id)
                      match (get workflows focused-id)
                        (:none)
                          div ({})
                            <> |Nothing $ {} (:font-family ui/font-fancy)
                              :color $ hsl 0 0 70
                              :font-size 20
                              :font-weight 100
                        (:some workflow)
                          comp-workflow-detail
                            decode-map-as (>> states :detail) (:: 'Map 'Tag 'Dynamic)
                            , workflow
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
        'comp-workflow-detail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-detail (states workflow)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ decode-map-as
                  either
                    option:unwrap-or (get states :data) nil
                    {} (:pop? false) (:edit? false)
                  :: 'Map 'Tag 'Bool
                remove-plugin $ use-confirm (>> states :remove) ({})
                commands $ decode-map-as
                  .unwrap-or (get workflow :commands) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
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
                      decode-map-as
                        .unwrap $ get workflow :base-dir
                        , 'String
                      {} (:font-family ui/font-code)
                        :color $ hsl 0 0 70
                    =< 40 nil
                    comp-icon :plus
                      &{} :font-size 16 :color (hsl 200 80 60) :cursor :pointer
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :pop? true
                        , &unit
                    let
                        on-close $ fn (d!)
                          hint-fn $ {}
                            :args $ [] $ :: 'Fn
                              {}
                                :args $ [] 'Dynamic
                                :rest 'Dynamic
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ assoc state :pop? false
                          , &unit
                      comp-modal
                        {} (:title |Demo)
                          :style $ {} $ :width 400
                          :container-style $ {}
                          :render $ fn (on-close)
                            hint-fn $ {}
                              :args $ [] $ :: 'Fn
                                {}
                                  :args $ [] $ :: 'Fn
                                    {}
                                      :args $ [] 'Dynamic
                                      :rest 'Dynamic
                                      :return 'Unit
                                  :return 'Unit
                              :return 'respo.schema/Component
                            comp-command-editor
                              decode-map-as (>> states :add-command) (:: 'Map 'Tag 'Dynamic)
                              %none
                              fn (command-draft d!)
                                hint-fn $ {}
                                  :args $ [] (:: 'Map 'Tag 'String)
                                    :: 'Fn $ {}
                                      :args $ [] 'Dynamic
                                      :rest 'Dynamic
                                      :return 'Unit
                                  :return 'Unit
                                d! $ :: :workflow/add-command $ {}
                                  :workflow-id $ decode-map-as
                                    .unwrap $ get workflow :id
                                    , 'String
                                  :draft command-draft
                                on-close d!
                                , &unit
                        .unwrap $ get state :pop?
                        , on-close
                  div
                    {} $ :style ui/row-parted
                    comp-icon :edit-2
                      &{} :font-size 14 :color (hsl 200 80 60) :cursor :pointer
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :edit? true
                        , &unit
                    comp-modal
                      {} (:title |Demo)
                        :style $ {} $ :width 400
                        :container-style $ {}
                        :render $ fn (on-close)
                          hint-fn $ {}
                            :args $ [] $ :: 'Fn
                              {}
                                :args $ [] $ :: 'Fn
                                  {}
                                    :args $ [] 'Dynamic
                                    :rest 'Dynamic
                                    :return 'Unit
                                :return 'Unit
                            :return 'respo.schema/Component
                          comp-workflow-editor
                            decode-map-as (>> states :editor) (:: 'Map 'Tag 'Dynamic)
                            %some workflow
                            , on-close
                      .unwrap $ get state :edit?
                      fn (d!)
                        hint-fn $ {}
                          :args $ [] $ :: 'Fn
                            {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :states cursor $ assoc state :edit? false
                        , &unit
                    =< 8 nil
                    comp-icon :x
                      &{} :font-size 18 :color (hsl 0 80 60) :cursor :pointer
                      fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        .show remove-plugin d! $ fn ()
                          hint-fn $ {}
                            :args $ []
                            :return 'Unit
                          d! $ :: :workflow/remove $ decode-map-as
                            .unwrap $ get workflow :id
                            , 'String
                          , &unit
                        , &unit
                list-> ({})
                  map
                    .to-list $ .keys commands
                    fn (k)
                      [] k $ comp-command-row
                        decode-map-as (>> states k) (:: 'Map 'Tag 'Dynamic)
                        .unwrap $ get commands k
                        decode-map-as
                          .unwrap $ get workflow :id
                          , 'String
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
        'comp-workflow-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-workflow-editor (states base-workflow on-toggle)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ decode-map-as
                  or
                    option:unwrap-or (get states :data) nil
                    if (option:some? base-workflow)
                      select-keys (option:unwrap base-workflow) ([] :name :base-dir)
                      {} (:name |) (:base-dir |./)
                  :: 'Map 'Tag 'String
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
                    :value $ .unwrap $ get state :name
                    :on-input $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :rest 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      d! $ :: :states cursor $ assoc state :name
                        decode-map-as
                          .unwrap $ get e :value
                          , 'String
                      , &unit
                =< nil 8
                div ({})
                  input $ {}
                    :style $ merge ui/input $ {} (:width 240)
                    :placeholder "|Base directory"
                    :value $ .unwrap $ get state :base-dir
                    :on-input $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :rest 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      d! $ :: :states cursor $ assoc state :base-dir
                        decode-map-as
                          .unwrap $ get e :value
                          , 'String
                      , &unit
                =< nil 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  button
                    {} (:style style/button)
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :rest 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        let
                            data $ select-keys state $ [] :name :base-dir
                          if (option:some? base-workflow)
                            d! $ :: :workflow/edit $ assoc data :id
                              option:unwrap-or
                                get (option:unwrap base-workflow) :id
                                , nil
                            d! $ :: :workflow/create data
                          d! $ :: :states cursor nil
                          on-toggle d!
                        , &unit
                    <> |Submit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Option $ :: 'Map 'Tag 'Dynamic
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:rest 'Dynamic) (:return 'Unit)
                    :args $ [] 'Dynamic
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
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> list-> span div input button a
            respo.comp.space :refer $ =<
            clojure.string :as string
            app.style :as style
            inflow-popup.comp.popup :refer $ comp-popup
            feather.core :refer $ comp-i comp-icon
            app.comp.command :refer $ comp-command-editor comp-command-row
            respo-alerts.core :refer $ use-confirm comp-modal
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:port 'Number) (:title 'String) (:icon 'String) (:dev-ui 'String) (:release-ui 'String) (:cdn-url 'String) (:cdn-folder 'String) (:upload-folder 'String) (:server-folder 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            let
                mode $ option:unwrap-or (get-env |mode) |release
              = mode |dev
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            Site :port 11014 :title |Termina :icon |http://cdn.tiye.me/logo/termina.png :dev-ui |http://localhost:8100/main.css :release-ui |http://cdn.tiye.me/favored-fonts/main.css :cdn-url |http://cdn.tiye.me/termina/ :cdn-folder |tiye.me:cdn/termina :upload-folder |tiye.me:repo/mvc-works/termina/ :server-folder |tiye.me:servers/termina :theme |#eeeeff :storage-key |termina :storage-file |termina.cirru
          :examples $ []
          :schema $ :: 'app.config/Site
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
            match (get @*registry pid)
              (:some proc)
                do (eprintln "|[kill] process" proc) (.!kill proc |SIGTERM)
              (:none)
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
                tokens $ decode-map-as
                  to-calcit-data $ string-argv command
                  :: 'List 'String
                env-chunks $ loop
                    remaining tokens
                    found $ assert-type ([]) (:: 'List 'String)
                  hint-fn $ {}
                    :args $ [] (:: 'List 'String) (:: 'List 'String)
                    :return $ :: 'List 'String
                  if (empty? remaining) found $ let
                      chunk $ option:unwrap $ first remaining
                    if (env-chunk? chunk)
                      recur
                        slice remaining 1 $ count remaining
                        conj found chunk
                      , found
                command-chunks $ slice tokens (count env-chunks) (count tokens)
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
                    let
                        parts $ split chunk |=
                        k $ option:unwrap $ first parts
                        v $ join-string
                          slice parts 1 $ count parts
                          , |=
                      assoc acc k v
              :: :command
                option:unwrap $ nth command-chunks 0
                slice command-chunks 1 $ count command-chunks
                , envs
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Enum)
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
          :require (|child_process :as cp) (|string-argv :default string-argv)
            js-ffi.node :refer $ env-or
    'app.runtime $ %{} 'FileEntry
      :defs $ {}
        'parse-port $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-port (text)
            match (parse-float text)
              (:ok port)
                if
                  and (integer? port) (>= port 0) (<= port 65535)
                  , port $ raise "|port must be an integer from 0 to 65535"
              (:err _error) (raise "|port must be an integer from 0 to 65535")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'String
          :tests $ [] $ %{} 'TestEntry (:name |valid-port-and-node-ephemeral)
            :code $ quote $ do
              assert= 11014 $ parse-port |11014
              assert= 0 $ parse-port |0
        'read-storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-storage-file (filename)
            match (env-get |TERMINA_STORAGE_FILE)
              (:some override)
                if (path-absolute? override) override $ raise "|TERMINA_STORAGE_FILE must be an absolute path"
              (:none)
                match (env-get |HOME)
                  (:some home)
                    path-join (path-join home |.config) filename
                  (:none) (raise "|HOME is required without TERMINA_STORAGE_FILE")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.runtime
          :require $ js-ffi.node :refer $ env-get path-join path-absolute?
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Database
            :sessions $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
            :users $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
            :workflows $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
            :processes $ :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
            :histories $ :: 'List $ :: 'Map 'Tag 'Dynamic
            :extensions $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'LogEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LogEvent (:pid 'Number) (:data 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def command
            {} (:id nil) (:title |) (:path |.) (:code |)
          :examples $ []
          :schema $ :: 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Database :sessions ({}) :users ({}) :workflows ({}) :processes ({}) :histories ([]) :extensions $ {}
          :examples $ []
          :schema $ :: 'app.schema/Database
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (raw)
            let
                data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              Database :sessions
                decode-map-as
                  .unwrap-or (get data :sessions) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                , :users
                  decode-map-as
                    .unwrap-or (get data :users) ({})
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  , :workflows
                    decode-map-as
                      .unwrap-or (get data :workflows) ({})
                      :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    , :processes
                      decode-map-as
                        .unwrap-or (get data :processes) ({})
                        :: 'Map 'Number $ :: 'Map 'Tag 'Dynamic
                      , :histories
                        decode-map-as
                          .unwrap-or (get data :histories) ([])
                          :: 'List $ :: 'Map 'Tag 'Dynamic
                        , :extensions $ -> data (dissoc :sessions) (dissoc :users) (dissoc :workflows) (dissoc :processes) (dissoc :histories)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-map-roundtrip)
            :code $ quote $ let
                raw $ {}
                  :sessions $ {} $ |s1
                    {} $ :user-id nil
                  :users $ {} $ |u1
                    {} (:name |Ada) (:avatar nil)
                  :processes $ {} $ 42
                    {} (:pid 42)
                      :content $ []
                  :workflows $ {}
                  :histories $ []
                  :future $ [] |kept nil 7
                decoded $ decode-database raw
              assert= raw $ encode-database decoded
              assert= true $ .some? $ get (:processes decoded) 42
        'decode-log-event $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-log-event (raw)
            let
                items $ decode-map-as raw $ :: 'List 'Dynamic
              assert "|Log event requires PID and text" $ = (count items) 2
              LogEvent :pid
                decode-map-as
                  .unwrap $ get items 0
                  , 'Number
                , :data $ decode-map-as
                  .unwrap $ get items 1
                  , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/LogEvent)
            :args $ [] 'Dynamic
        'encode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-database (db)
            merge-dynamic (:extensions db)
              dissoc (&struct:to-map db) :extensions
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database
            :return $ :: 'Map 'Tag 'Dynamic
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
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'String 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db (load-database!)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Database
        '*loop-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *loop-trigger (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'js-ffi.node/NodeTimerHost
        '*proxied-dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *proxied-dispatch! dispatch!
          :examples $ []
          :schema $ :: 'Ref $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'String
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
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
                op-id $ random-uuid
                op-time $ unix-time-ms
              if config/dev? $ println |Dispatch! (str op) sid
              try
                match op
                  (:effect/persist) (persist-db!)
                  (:effect/run d)
                    create-process!
                      decode-map-as d $ :: 'Map 'Tag 'Dynamic
                      , dispatch! sid
                  (:effect/kill d)
                    kill-process! (decode-map-as d 'Number) dispatch! sid
                  _ $ reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
                fn (error) (js/console.error error)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'String
            :features $ #{} :js-ffi
        'load-database! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-database! ()
            let
                found? $ file-exists? storage-file
              println $ if found? |Found-local-EDN-data |Found-no-data
              if found?
                schema/decode-database $ parse-cirru-edn $ read-text! storage-file
                , schema/database
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ []
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                port $ parse-port $ env-or |port
                  str $ :port config/site
                ui-url $ str |http://termina.mvc-works.org/?port= port
              run-server! port
              println |Server-started.-Open-UI-on- ui-url
            render-loop! *loop-trigger
            js/process.on |SIGINT on-exit!
            set-interval!
              fn () $ persist-db!
              , 60000
            when
              not= (env-or |NO_VERSION_CHECK |0) |1
              check-version!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (println "|termina exit code is: 0") (exit! 0) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                db $ :db @*reel
                processes $ :processes db
                stopped $ filter-map-kv processes $ fn (pid process)
                  hint-fn $ {}
                    :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
                    :return $ :: 'MapEntryDecision 'Number $ :: 'Map 'Tag 'Dynamic
                  %:: MapEntryDecision :keep pid $ assoc process :alive? false
                file-content $ format-cirru-edn $ schema/encode-database
                  assoc
                    assoc db :sessions $ {}
                    , :processes stopped
              write-mildly! storage-file file-content
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated.") (clear-twig-caches!) (reset! *proxied-dispatch! dispatch!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater-from-record
            match @*loop-trigger
              (:some timer) (clear-timeout! timer)
              (:none) &unit
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
            reset! *loop $ Option :some $ set-timeout!
              fn () $ render-loop! *loop
              , 200
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Ref (:: 'Option 'js-ffi.node/NodeTimerHost)
            :features $ #{} :js-ffi
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            let
                options $ {}
                  :on-open $ fn (sid socket)
                    @*proxied-dispatch! (:: :session/connect) sid
                    println "|New client."
                  :on-data $ fn (sid action) (@*proxied-dispatch! action sid)
                  :on-close $ fn (sid event) (println "|Client closed!")
                    @*proxied-dispatch! (:: :session/disconnect) sid
                  :on-error $ fn (error) (js/console.error error)
              match (env-get |HOST)
                (:some host)
                  wss-serve! port $ merge-dynamic options $ {} (:host host)
                (:none) (wss-serve! port options)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.server/NodeWebSocketServerHost)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            read-storage-file $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid socket)
              hint-fn $ {}
                :args $ [] 'String 'ws-edn.server/NodeWebSocketHost
                :return 'Unit
                :features $ #{} :js-ffi
              let
                  db $ :db reel
                  records $ :records reel
                  session $ decode-map-as
                    option:unwrap-or
                      get-in (:sessions db) ([] sid)
                      {}
                    :: 'Map 'Tag 'Dynamic
                  old-store $ option:unwrap-or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
            :features $ #{} :js-ffi
        'updater-from-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater-from-record (db op sid op-id op-time)
            updater db op (decode-map-as sid 'String) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ ReelState reel-reducer refresh-reel
            |node:fs :as fs
            |child_process :as cp
            |node:path :as path
            |latest-version :default latest-version
            |chalk :default chalk
            |node:url :refer $ fileURLToPath
            app.config :as config
            cumulo-util.file :refer $ write-mildly!
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            recollect.twig :refer $ render-twig clear-twig-caches!
            ws-edn.server :refer $ wss-serve! wss-send! wss-each!
            app.manager :refer $ create-process! kill-process!
            |url-parse :default url-parse
            js-ffi.node :refer $ env-or file-exists? read-text! set-timeout! clear-timeout! set-interval! exit! env-get
            app.runtime :refer $ read-storage-file parse-port
            js-ffi.shared :refer $ random-uuid
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
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.css :refer $ defstyle
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                user-id $ option:unwrap-or (get session :user-id) nil
                logged-in? $ string? user-id
                router $ decode-map-as
                  option:unwrap-or (get session :router) ({})
                  :: 'Map 'Tag 'Dynamic
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
                workflows $ :workflows db
                processes $ :processes db
                histories $ :histories db
                sessions $ :sessions db
                users $ :users db
              merge-dynamic base-data $ decode-map-as
                if logged-in?
                  {}
                    :user $ twig-user $ option:unwrap-or
                      get users $ decode-map-as user-id 'String
                      {}
                    :router $ assoc router :data $ case-default
                      option:unwrap-or (get router :name) nil
                      {}
                      :history $ {} $ :histories histories
                      :workflows $ {} $ :workflows workflows
                      :home $ {} (:processes processes) (:workflows workflows)
                        :enlarge-view $ option:unwrap-or (get session :enlarge-view) false
                      :process $ let
                          process-id $ decode-map-as
                            option:unwrap $ get-in router $ [] :params :id
                            , 'Number
                        {}
                          :detail $ option:unwrap-or (get processes process-id)
                            decode-map-as ({}) (:: 'Map 'Tag 'Dynamic)
                          :dict $ filter-map-kv processes $ fn (k v)
                            hint-fn $ {}
                              :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
                              :return $ :: 'MapEntryDecision 'Number $ :: 'Map 'Tag 'Dynamic
                            %:: MapEntryDecision :keep k $ dissoc v :content
                      :profile $ twig-members sessions users
                    :count $ count sessions
                    :color $ color/randomColor
                  {}
                :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic)
              :: 'List $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              hint-fn $ {}
                :args $ [] 'String $ :: 'Map 'Tag 'Dynamic
                :return $ :: 'MapEntryDecision 'String 'String
              match (get session :user-id)
                (:some raw-id)
                  if (string? raw-id)
                    let
                        user $ option:unwrap-or (get users raw-id) ({})
                        name $ decode-map-as
                          option:unwrap-or (get user :name) |unknown
                          , 'String
                      %:: MapEntryDecision :keep sid name
                    %:: MapEntryDecision :drop
                (:none) (%:: MapEntryDecision :drop)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'String 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            |randomcolor :as color
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
              (:session/remove-message d)
                session/remove-message db
                  decode-map-as
                    .unwrap $ get
                      decode-map-as d $ :: 'Map 'Tag 'Dynamic
                      , :id
                    , 'String
                  , sid op-id op-time
              (:session/enlarge d)
                session/enlarge db
                  if (nil? d) (Option :none)
                    Option :some $ decode-map-as d 'Number
                  , sid op-id op-time
              (:user/log-in d)
                user/log-in db
                  decode-map-as d $ :: 'List 'String
                  , sid op-id op-time
              (:user/sign-up d)
                user/sign-up db
                  decode-map-as d $ :: 'List 'String
                  , sid op-id op-time
              (:user/log-out d) (user/log-out db d sid op-id op-time)
              (:router/change d)
                router/change db
                  decode-map-as d $ :: 'Map 'Tag 'Dynamic
                  , sid op-id op-time
              (:process/create d)
                process/create db
                  decode-map-as d $ :: 'Map 'Tag 'Dynamic
                  , sid op-id op-time
              (:process/stdout d)
                let
                    event $ schema/decode-log-event d
                  process/stdout db (:pid event) (:data event) sid op-id op-time
              (:process/stderr d)
                let
                    event $ schema/decode-log-event d
                  process/stderr db (:pid event) (:data event) sid op-id op-time
              (:process/error d)
                let
                    event $ schema/decode-log-event d
                  process/error db (:pid event) (:data event) sid op-id op-time
              (:process/clear d) (process/clear db d sid op-id op-time)
              (:process/finish d)
                process/finish db (decode-map-as d 'Number) sid op-id op-time
              (:process/change-command pid next)
                process/change-command db (decode-map-as pid 'Number) (decode-map-as next 'String) sid op-id op-time
              (:process/remove-dead d)
                process/remove-dead db (decode-map-as d 'Number) sid op-id op-time
              (:process/shorten-content d)
                process/shorten-content db (decode-map-as d 'Number) sid op-id op-time
              (:workflow/create d)
                workflow/create-workflow db
                  decode-map-as d $ :: 'Map 'Tag 'Dynamic
                  , sid op-id op-time
              (:workflow/remove d)
                workflow/remove-workflow db (decode-map-as d 'String) sid op-id op-time
              (:workflow/add-command d)
                workflow/add-command db
                  decode-map-as d $ :: 'Map 'Tag 'Dynamic
                  , sid op-id op-time
              (:workflow/remove-command d)
                let
                    items $ decode-map-as d $ :: 'List 'String
                  workflow/remove-command db
                    decode-map-as
                      .unwrap $ get items 0
                      , 'String
                    decode-map-as
                      .unwrap $ get items 1
                      , 'String
                    , sid op-id op-time
              (:workflow/edit-command d)
                let
                    items $ decode-map-as d $ :: 'List 'Dynamic
                  workflow/edit-command db
                    decode-map-as
                      .unwrap $ get items 0
                      , 'String
                    decode-map-as
                      .unwrap $ get items 1
                      , 'String
                    decode-map-as
                      .unwrap $ get items 2
                      :: 'Map 'Tag 'Dynamic
                    , sid op-id op-time
              (:workflow/edit d)
                workflow/edit-workflow db
                  decode-map-as d $ :: 'Map 'Tag 'Dynamic
                  , sid op-id op-time
              (:process/clear-history d) (process/clear-history db d sid op-id op-time)
              _ $ do (println "|Unknown op:" op) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema) (app.updater.process :as process) (app.updater.workflow :as workflow)
    'app.updater.process $ %{} 'FileEntry
      :defs $ {}
        'change-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change-command (db pid next sid op-id op-time)
            assoc db :processes $ assoc-in (:processes db) ([] pid :command) next
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'String 'Number
        'clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear (db op-data sid op-id op-time)
            assoc db :processes $ filter-map-kv (:processes db)
              fn (pid process)
                hint-fn $ {}
                  :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
                  :return $ :: 'MapEntryDecision 'Number $ :: 'Map 'Tag 'Dynamic
                if
                  decode-map-as
                    .unwrap-or (get process :alive?) false
                    , 'Bool
                  MapEntryDecision :keep pid process
                  MapEntryDecision :drop
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'String 'String 'Number
        'clear-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-history (db op-data sid op-id op-time)
            assoc db :histories $ []
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'String 'String 'Number
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db op-data sid op-id op-time)
            let
                pid $ decode-map-as
                  .unwrap $ get op-data :pid
                  , 'Number
                command $ decode-map-as
                  .unwrap $ get op-data :command
                  , 'String
                cwd $ decode-map-as
                  .unwrap $ get op-data :cwd
                  , 'String
                raw-title $ .unwrap-or (get op-data :title) nil
                title $ if (nil? raw-title) nil $ decode-map-as raw-title 'String
                process $ merge-dynamic schema/process op-data $ {} (:pid pid) (:command command) (:cwd cwd) (:title title) (:started-at op-time) (:alive? true)
                history $ merge schema/history $ {} (:command command) (:cwd cwd) (:started-at op-time) (:id op-id) (:title title)
              assoc
                assoc db :processes $ assoc (:processes db) pid process
                , :histories $ conj (:histories db) history
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
        'error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn error (db pid data sid op-id op-time)
            let
                processes $ :processes db
                process $ .unwrap-or (get processes pid) ({})
                content $ decode-map-as
                  .unwrap-or (get process :content) ([])
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              assoc db :processes $ assoc processes pid $ assoc process :content
                conj content $ {} (:type :error) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'String 'Number
        'finish $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn finish (db op-data sid op-id op-time)
            assoc db :processes $ assoc-in (:processes db) ([] op-data :alive?) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'Number
        'remove-dead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-dead (db op-data sid op-id op-time)
            if
              not $ option:unwrap-or
                get-in (:processes db) ([] op-data :alive?)
                , false
              assoc db :processes $ dissoc (:processes db) op-data
              , db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'Number
        'shorten-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn shorten-content (db op-data sid op-id op-time)
            assoc db :processes $ update-in (:processes db) ([] op-data)
              fn (process)
                hint-fn $ {}
                  :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                  :return $ :: 'Map 'Tag 'Dynamic
                assoc
                  option:unwrap-or process $ assert-type ({}) (:: 'Map 'Tag 'Dynamic)
                  , :content $ assert-type ([])
                    :: 'List $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'Number
        'stderr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stderr (db pid data sid op-id op-time)
            let
                processes $ :processes db
                process $ .unwrap-or (get processes pid) ({})
                content $ decode-map-as
                  .unwrap-or (get process :content) ([])
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              assoc db :processes $ assoc processes pid $ assoc process :content
                conj content $ {} (:type :stderr) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'String 'Number
        'stdout $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stdout (db pid data sid op-id op-time)
            let
                processes $ :processes db
                process $ .unwrap-or (get processes pid) ({})
                content $ decode-map-as
                  .unwrap-or (get process :content) ([])
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              assoc db :processes $ assoc processes pid $ assoc process :content
                conj content $ {} (:type :stdout) (:data data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.process
          :require $ app.schema :as schema
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc db :sessions $ assoc-in (:sessions db) ([] sid :router) op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (db sid message-id text)
            let
                sessions $ :sessions db
                session $ .unwrap-or (get sessions sid) ({})
                messages $ decode-map-as
                  .unwrap-or (get session :messages) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              assoc db :sessions $ assoc sessions sid $ assoc session :messages
                assoc messages message-id $ {} (:id message-id) (:text text)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'String
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc db :sessions $ assoc-in (:sessions db) ([] sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            assoc db :sessions $
              fn (session)
                hint-fn $ {}
                  :args $ [] $ :: 'Map 'String (:: 'Map 'Tag 'Dynamic)
                  :return $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                dissoc session sid
              :sessions db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'Number
        'enlarge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn enlarge (db target sid op-id op-time)
            assoc db :sessions $ assoc-in (:sessions db) ([] sid :enlarge-view)
              match target
                (:some pid) pid
                (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Option 'Number) 'String 'String 'Number
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db message-id sid op-id op-time)
            let
                sessions $ :sessions db
                session $ .unwrap-or (get sessions sid) ({})
                messages $ decode-map-as
                  .unwrap-or (get session :messages) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              assoc db :sessions $ assoc sessions sid $ assoc session :messages (dissoc messages message-id)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'hash-password $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hash-password (password)
            decode-map-as
              to-calcit-data $ md5 password
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            assert "|Login requires username and password" $ = (count credentials) 2
            let
                username $ .unwrap $ get credentials 0
                password $ .unwrap $ get credentials 1
                maybe-user $ find
                  &set:to-list $ vals $ :users db
                  fn (user)
                    hint-fn $ {}
                      :args $ [] $ :: 'Map 'Tag 'Dynamic
                      :return 'Bool
                    = username $ decode-map-as
                      .unwrap $ get user :name
                      , 'String
              match maybe-user
                (:some user)
                  if
                    = (hash-password password)
                      decode-map-as
                        .unwrap $ get user :password
                        , 'String
                    assoc db :sessions $ update-in (:sessions db) ([] sid)
                      fn (current)
                        hint-fn $ {}
                          :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                          :return $ :: 'Map 'Tag 'Dynamic
                        assoc
                          .unwrap-or current $ {}
                          , :user-id $ decode-map-as
                            .unwrap $ get user :id
                            , 'String
                    add-message db sid op-id $ str "|Wrong password for " username
                (:none)
                  add-message db sid op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'List 'String) 'String 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            assoc db :sessions $ assoc-in (:sessions db) ([] sid :user-id) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'String 'String 'Number
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            assert "|Signup requires username and password" $ = (count credentials) 2
            let
                username $ .unwrap $ get credentials 0
                password $ .unwrap $ get credentials 1
                maybe-user $ find
                  &set:to-list $ vals $ :users db
                  fn (user)
                    hint-fn $ {}
                      :args $ [] $ :: 'Map 'Tag 'Dynamic
                      :return 'Bool
                    = username $ decode-map-as
                      .unwrap $ get user :name
                      , 'String
              if (.some? maybe-user)
                add-message db sid op-id $ str |Name-is-taken:- username
                let
                    sessions $ update-in (:sessions db) ([] sid)
                      fn (current)
                        hint-fn $ {}
                          :args $ [] $ :: 'Option (:: 'Map 'Tag 'Dynamic)
                          :return $ :: 'Map 'Tag 'Dynamic
                        assoc
                          .unwrap-or current $ {}
                          , :user-id op-id
                    users $ assoc (:users db) op-id $ {} (:id op-id) (:name username) (:nickname username)
                      :password $ hash-password password
                      :avatar nil
                  assoc (assoc db :sessions sessions) :users users
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'List 'String) 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require (|md5 :default md5)
            app.updater.session :refer $ add-message
    'app.updater.workflow $ %{} 'FileEntry
      :defs $ {}
        'add-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-command (db op-data sid op-id op-time)
            let
                id $ decode-map-as
                  .unwrap $ get op-data :workflow-id
                  , 'String
                draft $ decode-map-as
                  .unwrap $ get op-data :draft
                  :: 'Map 'Tag 'Dynamic
                workflows $ :workflows db
                workflow $ .unwrap-or (get workflows id) ({})
                commands $ decode-map-as
                  .unwrap-or (get workflow :commands) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              assoc db :workflows $ assoc workflows id $ assoc workflow :commands
                assoc commands op-id $ assoc draft :id op-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
        'create-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-workflow (db op-data sid op-id op-time)
            let
                name $ decode-map-as
                  .unwrap-or (get op-data :name) |
                  , 'String
                base-dir $ decode-map-as
                  .unwrap-or (get op-data :base-dir) |~/
                  , 'String
                command $ merge schema/command $ {} (:id op-id) (:title name) (:path base-dir) (:code "|echo nothing yet")
                workflow $ merge schema/workflow $ {} (:id op-id) (:name name) (:base-dir base-dir)
                  :commands $ {} $ op-id command
              assoc db :workflows $ assoc (:workflows db) op-id workflow
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
        'edit-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn edit-command (db workflow-id command-id changes sid op-id op-time)
            let
                workflows $ :workflows db
                workflow $ .unwrap-or (get workflows workflow-id) ({})
                commands $ decode-map-as
                  .unwrap-or (get workflow :commands) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                command $ .unwrap-or (get commands command-id) ({})
              assoc db :workflows $ assoc workflows workflow-id $ assoc workflow :commands
                assoc commands command-id $ merge-dynamic command changes
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
        'edit-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn edit-workflow (db changes sid op-id op-time)
            let
                id $ decode-map-as
                  .unwrap $ get changes :id
                  , 'String
                workflow $ .unwrap-or
                  get (:workflows db) id
                  {}
              assoc db :workflows $ assoc (:workflows db) id $ merge-dynamic workflow changes
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'String 'String 'Number
        'remove-command $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-command (db workflow-id command-id sid op-id op-time)
            let
                workflows $ :workflows db
                workflow $ .unwrap-or (get workflows workflow-id) ({})
                commands $ decode-map-as
                  .unwrap-or (get workflow :commands) ({})
                  :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
              assoc db :workflows $ assoc workflows workflow-id $ assoc workflow :commands (dissoc commands command-id)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'String 'String 'Number
        'remove-workflow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-workflow (db op-data sid op-id op-time)
            let
                workflow-id op-data
              assoc db :workflows $
                fn (workflows)
                  hint-fn $ {}
                    :args $ [] $ :: 'Map 'String (:: 'Map 'Tag 'Dynamic)
                    :return $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  dissoc workflows workflow-id
                :workflows db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'String 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.workflow
          :require $ app.schema :as schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'join-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn join-path (xs ys)
            if
              =
                option:unwrap-or (first ys) |
                , |/
              , ys $ let
                  absolute? $ =
                    option:unwrap-or (first xs) |
                    , |/
                  new-path $ join-segments ([])
                    concat (split xs |/) (split ys |/)
                if absolute? (str |/ new-path) new-path
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
          :tests $ [] $ %{} 'TestEntry (:name |existing-path-cases)
            :code $ quote $ do
              assert= (join-path | |) |
              assert= (join-path |/ |) |/
              assert= (join-path | |/) |/
              assert= (join-path |a |b) |a/b
              assert= (join-path |a |../b) |b
              assert= (join-path |a |./b) |a/b
              assert= (join-path |a/ |./b) |a/b
        'join-segments $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn join-segments (acc xs)
            if (empty? xs) (join-string acc |/)
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
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
