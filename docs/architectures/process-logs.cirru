{}
  :schema-version 1
  :feature 'process-logs
  :doc "|保留进程 Map、数字 PID 和原日志内容；在页面边界校验日志，使用真实字段描述筛选 UI 状态，以索引区分相同正文的日志行。"
  :roots $ #{} 'app.comp.process/comp-process 'app.comp.process-detail/comp-process-detail
  :definitions $ {}
    'app.comp.process-detail/DetailState $ {}
      :mode :ensure
      :kind :data
      :doc "|详情页私有筛选状态；可从旧 Map 解码，初始值沿用原页面，不改变服务数据格式。"
      :schema 'StructDef
      :code $ quote $ defstruct DetailState (:filter 'String) (:filter? 'Bool) (:wrap? 'Bool) (:all-log? 'Bool) (:hide-thread-info? 'Bool)
    'app.comp.process-detail/comp-process-detail $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
    'app.comp.process/comp-process $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] $ :: 'Map 'Tag 'Dynamic
    'app.comp.process/find-urls $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:args $ [] 'String) (:return $ :: 'List 'String)
        :features $ #{} :js-ffi
  :edges $ #{}
    :: :type 'app.comp.process-detail/comp-process-detail 'app.comp.process-detail/DetailState
    :: :call 'app.comp.process/comp-process 'app.comp.process/find-urls
