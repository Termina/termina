{}
  :schema-version 1
  :feature 'patch-wire
  :doc "|按已发布 Recollect change-op 合同解码原 Cirru EDN patch；不把静态断言当成输入检查，不改变差量格式、操作顺序或缺失 data 的旧空列表行为。"
  :roots $ #{} 'app.client/on-server-data
  :definitions $ {}
    'app.schema/decode-changes $ {}
      :mode :ensure
      :kind :fn
      :doc "|网络差量的真实检查边界，保留递归 change-op 与有意开放的业务 payload。"
      :params $ [] 'raw
      :schema $ :: 'Fn $ {} (:args $ [] 'Dynamic)
        :return $ :: 'List 'recollect.schema/change-op
      :code $ quote $ defn decode-changes (raw)
        recollect.schema/decode-changes raw
    'app.client/on-server-data $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {} (:return 'Unit)
        :args $ [] $ :: 'Map 'Tag 'Dynamic
  :edges $ #{}
    :: :call 'app.client/on-server-data 'app.schema/decode-changes
