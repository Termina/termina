{}
  :schema-version 1
  :feature 'login-events
  :doc "|沿用用户名/密码 Map 与原 storage key；在 UI 状态和事件入口检查具体值，以单个 Enum 派发登录和状态更新。"
  :roots $ #{} 'app.comp.login/comp-login
  :definitions $ {}
    'app.comp.login/comp-login $ {}
      :mode :external
      :kind :data
      :doc "|现有 defcomp 宏定义（scaffold 按源码头分类为 data）；运行时仍是组件函数，不生成或替换骨架。"
      :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
        :args $ [] $ :: 'Map 'Tag 'Dynamic
    'app.comp.login/on-submit $ {}
      :mode :ensure
      :kind :fn
      :doc "|创建提交事件回调，保留原账号缓存与单个 Enum 协议。"
      :params $ [] 'username 'password 'signup?
      :schema $ :: 'Fn
        {}
          :args $ [] 'String 'String 'Bool
          :return $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:args $ [] 'Dynamic) (:rest 'Dynamic) (:return 'Unit)
              :return 'Unit
  :edges $ #{}
    :: :call 'app.comp.login/comp-login 'app.comp.login/on-submit
