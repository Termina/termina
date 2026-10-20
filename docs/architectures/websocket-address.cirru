{}
  :schema-version 1
  :feature 'websocket-address
  :doc "|在真实 url-parse 边界选择连接地址；查询键缺失时分别使用页面 hostname 和原配置端口，保留显式值及原 ws:// 协议。"
  :roots $ #{} 'app.client/resolve-websocket-url
  :definitions $ {}
    'app.util/websocket-url $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'href 'default-port
      :schema $ :: 'Fn $ {} (:args $ [] 'String 'Number) (:return 'String) (:features $ #{} :js-ffi)
      :doc "|纯地址选择的浏览器 JS 实现；不连接网络，不把 url-parse 对象强转为自定义宿主。"
      :code $ quote $ defn websocket-url (href default-port)
        raise "|URL parsing requires JavaScript"
    'app.client/resolve-websocket-url $ {}
      :mode :external
      :kind :fn
      :schema $ :: 'Fn $ {} (:args $ []) (:return 'String) (:features $ #{} :js-ffi)
  :edges $ #{}
    :: :call 'app.client/resolve-websocket-url 'app.util/websocket-url
