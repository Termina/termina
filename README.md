
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 0.30.1 迁移候选（尚未完成）

此分支尚不能发布或部署：完整 strict、整页普通检查和生产构建已通过，但仍需评估剩余宿主边界，尚未验收真实浏览器登录、缓存写入和隔离服务。
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
- 大小写、日志正则和日期仍保留原 JS 行为（日期为本地时区 `MM-DD HH:mm:ss`）；冒号文本不转换成 Tag。命令字段检查真实 String/Bool，布尔 fallback 仍只用于缺失字段；刷新改用正式 location 接口与 epoch 毫秒。
- 网络补丁复用 Recollect 正式 `decode-changes`，检查解析后的操作并重建名义类型；不改变原 wire 格式和缺失 data 的空列表行为。登录提交保留真实两参数回调，派发与收包函数明确返回 Unit。
- 键盘事件使用 js-ffi 的正式检查接口和 metaKey 字段映射；退休未引用的自定义键盘宿主类型。包信息和 WebSocket 会话 ID 改为运行时检查，不依赖静态断言；没有更改服务监听或账号协议。

隔离验收需要同时明确设置绝对 `TERMINA_STORAGE_FILE`、`HOST=127.0.0.1` 和 `NO_VERSION_CHECK=1`。
存储路径默认仍为 HOME/.config/termina.cirru；单独改路径不等于网络隔离，省略 HOST 仍保留 Node 原默认监听行为。

当前证据与限制：

- 服务端可达检查 97/97；全部原生测试 4/4（含新增补丁往返）。实际前后端入口重新生成后，Node 回归 22/22，覆盖原命令解析、状态操作、组件、连接地址默认值与真实服务端投影，以及首包/增量补丁跨前后端图的往返。新增的固定合成 Node 子进程验证实际参数、环境、stdout/stderr 和完成派发，并有失败清理；不执行用户命令或启动服务。
- 十一个 UI/客户端命名空间公开冷检查 71/71、Node 侧 manager 冷检查 9/9。组件测试使用真实前端 `out-page/`，不再依赖局部引用入口生成。
- 整页普通检查 371/371（退休未引用类型及其依赖）、实际前后端 JS 生成及 Vite 生产构建通过；构建仍有包体超过 500 kB 的提示，未提高阈值掩盖。完整 strict 工作流已通过：类型诊断、待迁移写法和源码审阅项均为 0；仍保留 213 项类型债务提示、4 处 FFI unsafe 需要评估。键盘实际事件、版本查询和服务端回调尚未单独运行验收；spawn 失败及缺失 pid 的合同仍需处理。
- 旧 `%:: MapEntryDecision` 改为直接构造器，移除冗余 do；非空进程字典的真实投影回归确认仍保留数字键并去掉 content，不改存档和网络字段。
- 连接地址修复了无查询参数或只指定 host/port 时拼入 undefined 的问题：缺失键分别使用页面 hostname 和原配置端口；显式值（包括空串）及原 ws:// 协议保持不变。解析使用原 url-parse 包的显式 JS 边界，退休两个自定义 URL 宿主类型。
- spawn 分支把 Calcit 参数列表和环境 Map 转成真实 JS Array/Object，再调用 Node；否则 Node 会把列表对象当成 options，导致目标程序收不到参数。流字段使用正确的宿主类型声明，不再重复强转；原 detached/unref 行为不变。
- 本地 14 模块视图不替代未来独立 CI 的严格 Caps 安装；不执行本地 Caps、不提交生成代码，不恢复 compact.cirru/package.cirru。
- 源码查询入口缺口已汇报 [Calcit #2223](https://github.com/calcit-lang/calcit/issues/2223)；临时只读查询实际依赖 Snapshot，不修改缓存或增加编译器迁移规则。
- 同型 Option 字段比较的误报已补充至 [Calcit #1989](https://github.com/calcit-lang/calcit/issues/1989#issuecomment-6296044450)；下游用原生 match 比较具体 payload，不抑制诊断。
- 双生成 core 在同一进程破坏 trait 分发已汇报 [Calcit #2224](https://github.com/calcit-lang/calcit/issues/2224)。投影测试在隔离 Node 测试进程生成原 Cirru EDN，再交给前端图；不混载两份 core 或修改生成代码语义。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
