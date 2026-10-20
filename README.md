
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 0.30.1 迁移候选（尚未完成）

此分支尚不能发布或部署：整页普通检查和生产构建已通过，但完整 strict 仍有阻塞，尚未验收真实浏览器登录、缓存写入和隔离服务。
目前使用配对 CLI/procs 0.30.1-alpha.5；正式 0.30.1 的发布资产仍未齐全。模块使用精确正式 tag，
包括 [Fuzzy Filter 0.0.16](https://github.com/mvc-works/fuzzy-filter/releases/tag/0.0.16)、
[ws-edn 0.0.44](https://github.com/mvc-works/ws-edn.calcit/releases/tag/0.0.44) 和
[Cumulo Reel 0.0.60](https://github.com/Cumulo/cumulo-reel.calcit/releases/tag/0.0.60)，不使用 root override 绕过 strict。

用户需要注意：

- 数据库存档和公开投影仍为原 Map，保留数字 PID、未知根扩展和原账号缓存 key；没有存档改写脚本。内部 Database/ReelState 已更换模型，部署须完整重启 Node，不能仅热更。
- 新 op-id 为 String UUID，时间使用 `unix-time-ms`；既有 ID 不变，不要依赖旧 nanoid 长度。端口保留配置值和 Node 的随机端口 0，拒绝非法尾缀、小数及越界值。
- 登录和命令编辑改为单 Enum 派发、真实两参数回调；命令字段和工作目录拼接不变。首页、工作流与日志筛选使用私有类型化状态，可读取旧 Map；首页 nil/false 放大状态和工作流 nil 焦点按缺失处理，保留原列表排序。重复日志使用不同索引 key，HTTP 链接恢复正常匹配。
- 服务模块初始化会读取数据库，主入口会监听端口并允许执行命令。不要直接用 `node server.mjs` 做验证；目前未启动真实服务、读取用户数据或执行命令。
- 页面只读 StoreView 不改原始网络 Map/patch；访客缺失的路由、人数和颜色使用 Option，不补造人数 0。失效的进程详情显示不可用提示；离线重连使用零载荷连接 Enum。

隔离验收需要同时明确设置绝对 `TERMINA_STORAGE_FILE`、`HOST=127.0.0.1` 和 `NO_VERSION_CHECK=1`。
存储路径默认仍为 HOME/.config/termina.cirru；单独改路径不等于网络隔离，省略 HOST 仍保留 Node 原默认监听行为。

当前证据与限制：

- 服务端可达检查 99/99、三项原生测试通过。实际前后端入口重新生成后，Node 回归 17/17，覆盖原命令解析、状态操作、组件与真实服务端投影；只使用合成数据和捕获派发，不执行用户命令或启动服务。
- 容器/导航/客户端公开冷检查 27/27；前七个 UI 命名空间的冷检查 39/39 已通过。组件测试使用真实前端 `out-page/`，不再依赖局部引用入口生成。
- 整页普通检查 372/372、实际前后端 JS 生成及 Vite 生产构建通过；构建仍有包体超过 500 kB 的提示，未提高阈值掩盖。完整 strict 未通过，仍有 16 处 FFI unsafe，不能以普通检查通过冒称完成。
- 本地 14 模块视图不替代未来独立 CI 的严格 Caps 安装；不执行本地 Caps、不提交生成代码，不恢复 compact.cirru/package.cirru。
- 源码查询入口缺口已汇报 [Calcit #2223](https://github.com/calcit-lang/calcit/issues/2223)；临时只读查询实际依赖 Snapshot，不修改缓存或增加编译器迁移规则。
- 同型 Option 字段比较的误报已补充至 [Calcit #1989](https://github.com/calcit-lang/calcit/issues/1989#issuecomment-6296044450)；下游用原生 match 比较具体 payload，不抑制诊断。
- 双生成 core 在同一进程破坏 trait 分发已汇报 [Calcit #2224](https://github.com/calcit-lang/calcit/issues/2224)。投影测试在隔离 Node 测试进程生成原 Cirru EDN，再交给前端图；不混载两份 core 或修改生成代码语义。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
