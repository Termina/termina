
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

已修复并正式发布 [Fuzzy Filter 0.0.16](https://github.com/mvc-works/fuzzy-filter/releases/tag/0.0.16)，
本分支引用该正式 tag，不以取消 strict 或 main/hash 引用绕过原版本冲突。
旧模块保存在忽略目录 `.calcit/modules0243`；当前本地视图按精确发布版本准备了 14 个模块，
仅用于迁移检查，不能替代未来独立 CI 的 strict Caps 安装。

17 个命名空间的旧 import 标记已通过官方事务规范化。进程管理模块冷检查 10/10 通过；
命令解析在真实入口检查 `List<String>`，返回 Enum，不再使用 unsafe 强转，
进程查询按 Option 分支处理，替换已退役的 `join-str`。重新生成解析入口 JS 后，原四个场景回归通过。
完整 server/page 入口仍有存储、twig、UI 状态与派发类型错误；该局部通过不代表完整 strict 或服务运行验收通过。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
