
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 0.30.1 迁移候选（尚未完成）

本分支正在迁移到配对 CLI/procs 0.30.1-alpha.5 和正式模块 tag，不能据此认定服务已可运行。
原 0.24.3 的 server/page 检查已复现，并先修复了命令参数被误当环境前缀、含等号变量值被截断的问题；
一个 Node 内置回归覆盖四个合成解析场景。后续仍需类型、协议、隔离运行和独立 CI 验收，不放宽基线。

注意：当前服务模块初始化会读取 HOME 下的数据库，主入口会监听端口并提供执行命令能力。
本轮只做编译与隔离的纯解析测试，没有加载实际服务入口、读取真实项目配置或启动用户进程；
不要用 `node server.mjs` 作为未经隔离的验证命令。本地不执行 Caps，也不发布 npm、合并或部署生产。
Snapshot 仅通过官方 query/tree/edit/config 修改，不恢复 compact.cirru/package.cirru 或提交生成代码。

Fuzzy Filter 0.0.15 仍声明旧的 Reel/UI/Respo 精确版本，与当前正式 Cumulo/Alerts 依赖图不一致，
已记录为 [fuzzy-filter #35](https://github.com/mvc-works/fuzzy-filter/issues/35)。将先修复上游并正式发版，
不以缓存软链接、取消 strict 或 main/hash 引用绕过。旧模块只保存在忽略目录 `.calcit/modules0243`；
当前 `.calcit/modules` 尚未准备好 0.30.1 图，禁止把旧缓存当新版本验收证据。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
