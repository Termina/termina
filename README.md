
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 迁移状态

升级后请使用正式 Calcit / `@calcit/procs` 0.41.1 重新生成客户端与服务端 JS。依赖图配对 Respo 0.19.5、Cumulo Reel 0.3.2 和 Fuzzy Filter 0.0.19。命令的输入、执行协议和存档格式保持。

命令解析使用具名的 `ParsedCommand`，命令编辑器和按钮回调传递应用的 `Op`。插件仍通过现有开放入口接收操作。

```sh
yarn compile-server
yarn compile-page
node --test tests/*.test.mjs
calcit calcit.cirru test --require-match
```

载入旧存档时，进程记录里残留的 string 键会被丢弃，其余字段不变。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
