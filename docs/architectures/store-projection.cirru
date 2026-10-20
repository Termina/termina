{}
  :schema-version 1
  :feature 'store-projection
  :doc "|仅解码页面消费的 Store 投影，网络 patch 和持久化仍保留原 Map。访客缺失的路由、人数和颜色使用 Option，不伪造空路由或人数 0；各路由按实际载荷类型解码。"
  :roots $ #{} 'app.comp.container/comp-container
  :definitions $ {}
    'app.comp.container/StoreView $ {}
      :mode :ensure
      :kind :data
      :doc "|页面只读投影；不替代网络原 Map，不丢弃 patch 中未展示的扩展字段。"
      :schema 'StructDef
      :code $ quote $ defstruct StoreView (:logged-in? 'Bool) (:session $ :: 'Map 'Tag 'Dynamic) (:reel-length 'Number)
        :router $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        :user $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        :count $ :: 'Option 'Number
        :color $ :: 'Option 'String
    'app.comp.container/decode-view $ {}
      :mode :ensure
      :kind :fn
      :doc "|在页面入口检查原 Map 投影，只选择实际读取的字段；未展示字段仍留在客户端原始 Store。"
      :params $ [] 'raw
      :schema $ :: 'Fn $ {} (:args $ [] 'Dynamic) (:return 'app.comp.container/StoreView)
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
    'app.comp.container/comp-container $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
    'app.comp.container/comp-status-color $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component) (:args $ [] $ :: 'Option 'String)
    'app.comp.navigation/comp-navigation $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] 'Bool (:: 'Option $ :: 'Map 'Tag 'Dynamic) (:: 'Option 'Number)
    'app.comp.navigation/render-entry $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
        :args $ [] (:: 'Option $ :: 'Map 'Tag 'Dynamic) 'Tag 'String
    'app.client/render-app! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ []) (:return 'Unit)
  :edges $ #{}
    :: :type 'app.comp.container/decode-view 'app.comp.container/StoreView
    :: :call 'app.comp.container/comp-container 'app.comp.container/decode-view
    :: :call 'app.comp.container/comp-container 'app.comp.navigation/comp-navigation
    :: :call 'app.comp.navigation/comp-navigation 'app.comp.navigation/render-entry
    :: :call 'app.comp.container/comp-container 'app.comp.container/comp-status-color
    :: :call 'app.client/render-app! 'app.comp.container/comp-container
