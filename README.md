
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 0.30.1 迁移候选（尚未完成）

此分支尚不能发布或部署：隔离 Linux CI 已通过迁移前后两入口完整 strict、原测试和生产构建，但尚未验收真实浏览器登录、缓存写入和完整隔离服务。
目前使用配对的正式 CLI/procs 0.30.1，14 个模块已通过严格 Caps 安装。模块使用精确正式 tag，
包括 [Fuzzy Filter 0.0.17](https://github.com/mvc-works/fuzzy-filter/tree/0.0.17)、
[ws-edn 0.0.48](https://github.com/mvc-works/ws-edn.calcit/tree/0.0.48) 和
[Cumulo Reel 0.0.62](https://github.com/Cumulo/cumulo-reel.calcit/tree/0.0.62)，不使用 root override、main 或提交哈希绕过依赖合同。

用户需要注意：

- 数据库存档和公开投影仍为原 Map，保留数字 PID、未知根扩展和原账号缓存 key；没有存档改写脚本。内部 Database/ReelState 已更换模型，部署须完整重启 Node，不能仅热更。
- 新 op-id 为 String UUID，时间使用 `unix-time-ms`；既有 ID 不变，不要依赖旧 nanoid 长度。端口保留配置值和 Node 的随机端口 0，拒绝非法尾缀、小数及越界值。
- 登录和命令编辑改为单 Enum 派发、真实两参数回调；命令字段和工作目录拼接不变。首页、工作流与日志筛选使用私有类型化状态，可读取旧 Map；首页 nil/false 放大状态和工作流 nil 焦点按缺失处理，保留原列表排序。重复日志使用不同索引 key，HTTP 链接恢复正常匹配。
- 服务模块初始化会读取数据库，主入口会监听端口并允许执行命令。不要直接用 `node server.mjs` 做验证；目前未启动真实服务、读取用户数据或执行命令。
- 页面只读 StoreView 不改原始网络 Map/patch；访客缺失的路由、人数和颜色使用 Option，不补造人数 0。失效的进程详情显示不可用提示；离线重连使用零载荷连接 Enum。
- 大小写、日志正则和日期仍保留原 JS 行为（日期为本地时区 `MM-DD HH:mm:ss`）；冒号文本不转换成 Tag。命令字段检查真实 String/Bool，布尔 fallback 仍只用于缺失字段；刷新改用正式 location 接口与 epoch 毫秒。
- 网络补丁复用 Recollect 正式 `decode-changes`，检查解析后的操作并重建名义类型；不改变原 wire 格式和缺失 data 的空列表行为。登录提交保留真实两参数回调，派发与收包函数明确返回 Unit。
- 键盘事件使用 js-ffi 的正式检查接口和 metaKey 字段映射；退休未引用的自定义键盘宿主类型。包信息和 WebSocket 会话 ID 改为运行时检查，不依赖静态断言；没有更改服务监听或账号协议。
- Cmd+K 的清空操作补齐既有 wire 所需的 nil 载荷；首页未放大进程、详情缺失 PID 时不再派发无效的缩短操作，数字 PID 0 保留。服务端缩短不存在/已清空的进程现在保持数据库不变，不再补造空进程；这是明确的旧行为修复，不是无语义变化的格式迁移。

隔离验收需要同时明确设置绝对 `TERMINA_STORAGE_FILE`、`HOST=127.0.0.1` 和 `NO_VERSION_CHECK=1`。
存储路径默认仍为 HOME/.config/termina.cirru；单独改路径不等于网络隔离，省略 HOST 仍保留 Node 原默认监听行为。

当前证据与限制：

- [官方 Linux 迁移 CI](https://github.com/Termina/termina/actions/runs/40222625770) 在迁移前后均通过全部原生测试 4/4 和 Node 回归 25/25，无跳过项。回归覆盖命令解析、状态操作、组件、连接地址默认值与真实服务端投影，以及首包/增量补丁跨前后端图的往返。既有合成进程用例覆盖真实 spawn 和 exec 管道，检查参数、环境、stdout/stderr/完成派发及失败清理；不执行用户命令或启动完整服务。
- 全部根定义按实际 Node/browser 目标完整冷检查：迁移前 158 个，移除私有宿主声明后 157 个（Node 60、browser 97），28 个命名空间无遗漏。两入口可达检查、完整 strict 和 dynamic-method=0 均在前后通过；没有放宽原门禁。组件测试使用真实前端 `out-page/`。
- 实际前后端 JS 生成及 Vite 生产构建通过；422 个生成文件逐一核对前后哈希，406 个完全相同，16 个变化已审阅为 Option 构造及所需 import/tag/source map、滚动 helper 替换和私有类型移除。构建仍有包体超过 500 kB 的提示，未提高阈值掩盖。仍保留显式异构 store 等真实类型边界，不宣称全部类型债务清零。真实浏览器 Cmd+K、滚动、npm 联网版本查询和完整服务端回调尚未单独运行验收；合成回归不代表完整服务验收。
- 旧 `%:: MapEntryDecision` 改为直接构造器，移除冗余 do；非空进程字典的真实投影回归确认仍保留数字键并去掉 content，不改存档和网络字段。
- 连接地址修复了无查询参数或只指定 host/port 时拼入 undefined 的问题：缺失键分别使用页面 hostname 和原配置端口；显式值（包括空串）及原 ws:// 协议保持不变。解析使用原 url-parse 包的显式 JS 边界，退休两个自定义 URL 宿主类型。
- spawn 分支把 Calcit 参数列表和环境 Map 转成真实 JS Array/Object，再调用 Node；否则 Node 会把列表对象当成 options，导致目标程序收不到参数。流字段使用正确的宿主类型声明，不再重复强转；原 detached/unref 行为不变。
- Node 进程使用显式 node external-object 合同，spawn/exec 返回后各检查一次真实 pid/stdout/stderr 字段存在和 on/unref/kill 方法形状，删除两处 unsafe；不重复检查同一返回对象。检查成功返回原对象，不证明字段值或回调签名，PID 数值仍由原边界验证；无 PID 的失败路径保留。
- 版本查询改用正式 `PromiseHost` 检查真实 Promise 形状，兑现时解码 String，不再用私有 `StringPromiseHost` 假定返回文本。`app.runtime/report-version!` 保留原比较、提示文本（包括原字面量反斜杠）和 Unit 返回；非 String 明确拒绝，不转字符串或补默认值。不添加 catch，Promise 拒绝仍向外传播。现有状态测试文件用合成 Promise 验证成功文本、冒号文本、非法载荷和拒绝；不导入会读库的 server，不访问 npm 服务。
- 键盘的原事件检查与注册不变；路由清空操作提取到 `clear-current-route!`，使用实际 Map 输入和单 Enum/Unit 派发合同，Option 缺失分支不补造 PID。原状态测试补充清空后缩短的对象身份断言，组件测试核对实际生成操作；这不替代真实浏览器键盘事件验收。
- 启动失败而没有 PID 时，改用既有会话消息显示启动错误；不注册进程、不生成假 PID、不跳转或放大。成功启动后仍按原进程生命周期派发；Node 错误使用正式 normalize-error 读取文本。
- 85 处已核对归属的旧写法改为 Option 构造、Option 方法、defref 和字面量 match；保留原缺失值、默认分支和参数求值行为。两处 `hud!` 页面错误提示仍保留，不以 raise 替代。
- 日志滚动复用 js-ffi 0.2.6 的 `element-scroll-to-bottom!`，删除私有 ScrollElementHost 和最后一处应用层 unsafe。仍只在查到原 `.scroll-area` 时滚动；读取一次 scrollHeight 后立即设置 scrollTop，不改平滑滚动或回退策略。正式 helper 会检查 scrollHeight 为 Number，异常不被吞掉。
- 正式依赖和源码迁移已在官方 Linux 0.30.1 上验收；不执行本地 Caps、不提交生成代码，不恢复 compact.cirru/package.cirru。临时迁移事务、对照脚本和哈希清单不进入项目。
- 源码查询入口缺口已汇报 [Calcit #2223](https://github.com/calcit-lang/calcit/issues/2223)；临时只读查询实际依赖 Snapshot，不修改缓存或增加编译器迁移规则。
- 同型 Option 字段比较的误报已补充至 [Calcit #1989](https://github.com/calcit-lang/calcit/issues/1989#issuecomment-6296044450)；下游用原生 match 比较具体 payload，不抑制诊断。
- 双生成 core 在同一进程破坏 trait 分发已汇报 [Calcit #2224](https://github.com/calcit-lang/calcit/issues/2224)。投影测试在隔离 Node 测试进程生成原 Cirru EDN，再交给前端图；不混载两份 core 或修改生成代码语义。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
