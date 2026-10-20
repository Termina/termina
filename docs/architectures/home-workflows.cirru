{}
  :schema-version 1
  :feature 'home-workflows
  :doc "|首页与工作流使用真实私有 UI 状态；旧 nil/false 放大状态和 nil 焦点按原缺失语义解码。保留工作流名称顺序、运行中进程优先及原进程时间排序，不改服务存档。"
  :roots $ #{} 'app.comp.home/comp-home 'app.comp.workflow/comp-workflow-container
  :definitions $ {}
    'app.comp.home/HomeState $ {}
      :mode :ensure
      :kind :data
      :doc "|首页私有查询与弹窗状态，可从旧 Map 解码。"
      :schema 'StructDef
      :code $ quote $ defstruct HomeState (:query 'String) (:pop? 'Bool)
    'app.comp.workflow/WorkflowListState $ {}
      :mode :ensure
      :kind :data
      :doc "|工作流列表私有状态；焦点缺失为 Option :none，不再把 nil 声明为 String。"
      :schema 'StructDef
      :code $ quote $ defstruct WorkflowListState (:focused-id $ :: 'Option 'String) (:pop? 'Bool)
    'app.comp.home/comp-home $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
    'app.comp.workflow/comp-workflow-container $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'String $ :: 'Map 'Tag 'Dynamic)
    'app.comp.workflow/comp-workflow-detail $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
    'app.comp.workflow/comp-workflow-editor $ {} (:mode :external) (:kind :data)
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Option $ :: 'Map 'Tag 'Dynamic)
          :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn $ {} (:args $ [] 'Dynamic) (:rest 'Dynamic) (:return 'Unit)
  :edges $ #{}
    :: :type 'app.comp.home/comp-home 'app.comp.home/HomeState
    :: :type 'app.comp.workflow/comp-workflow-container 'app.comp.workflow/WorkflowListState
    :: :call 'app.comp.workflow/comp-workflow-container 'app.comp.workflow/comp-workflow-detail
    :: :call 'app.comp.workflow/comp-workflow-container 'app.comp.workflow/comp-workflow-editor
    :: :call 'app.comp.workflow/comp-workflow-detail 'app.comp.workflow/comp-workflow-editor
