{}
  :schema-version 1
  :feature 'command-events
  :doc "|保留原命令 Map/路径与服务协议；仅在编辑器状态和事件入口解码字符串，统一单 Enum 派发与两参数提交/关闭回调。全程不执行命令。"
  :roots $ #{} 'app.comp.command/comp-command-button 'app.comp.command/comp-command-row
  :definitions $ {}
    'app.comp.command/comp-command-button $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] $ :: 'Map 'Tag 'Dynamic
    'app.comp.command/comp-command-row $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic) 'String
    'app.comp.command/comp-command-editor $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Option $ :: 'Map 'Tag 'Dynamic)
          :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'String)
              :: 'Fn $ {} (:args $ [] 'Dynamic) (:rest 'Dynamic) (:return 'Unit)
    'app.comp.home/comp-home $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
    'app.comp.workflow/comp-workflow-detail $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
  :edges $ #{}
    :: :call 'app.comp.command/comp-command-row 'app.comp.command/comp-command-editor
    :: :call 'app.comp.home/comp-home 'app.comp.command/comp-command-editor
    :: :call 'app.comp.workflow/comp-workflow-detail 'app.comp.command/comp-command-editor
