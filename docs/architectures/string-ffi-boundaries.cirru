{}
  :schema-version 1
  :feature 'string-ffi-boundaries
  :doc "|保留大小写、日志正则、本地日期及环境前缀规则；检查真实 String/Bool 边界，不用 unsafe 充当返回证明。刷新使用已发布 location 接口和 epoch 毫秒，不声明虚假宿主能力。"
  :roots $ #{} 'app.comp.home/lower-case 'app.comp.history/comp-history 'app.comp.process-detail/hide-thread-info 'app.comp.profile/refresh-page! 'app.manager/env-chunk? 'app.manager/read-string-field 'app.manager/read-bool-field-or
  :definitions $ {}
    'app.comp.home/lower-case $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] 'String) (:return 'String) (:features $ #{} :js-ffi)
    'app.comp.history/format-date-time $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] 'Number) (:return 'String) (:features $ #{} :js-ffi)
    'app.comp.process-detail/hide-thread-info $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] 'String) (:return 'String) (:features $ #{} :js-ffi)
    'app.comp.profile/refresh-page! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ []) (:return 'Unit) (:features $ #{} :js-ffi)
    'app.comp.history/comp-history $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] $ :: 'List $ :: 'Map 'Tag 'Dynamic
    'app.manager/env-chunk? $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] 'String) (:return 'Bool) (:features $ #{} :js-ffi)
    'app.manager/read-string-field $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag) (:return 'String)
    'app.manager/read-bool-field-or $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag 'Bool) (:return 'Bool)
  :edges $ #{}
    :: :call 'app.comp.history/comp-history 'app.comp.history/format-date-time
