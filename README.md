
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
本轮只做编译与隔离的解析/投影/路径测试，没有加载实际服务入口、读取真实项目配置或启动用户进程；
不要用 `node server.mjs` 作为未经隔离的验证命令。本地不执行 Caps，也不发布 npm、合并或部署生产。
Snapshot 仅通过官方 query/tree/edit/config 修改，不恢复 compact.cirru/package.cirru 或提交生成代码。

已修复并正式发布 [Fuzzy Filter 0.0.16](https://github.com/mvc-works/fuzzy-filter/releases/tag/0.0.16)，
本分支引用该正式 tag，不以取消 strict 或 main/hash 引用绕过原版本冲突。
旧模块保存在忽略目录 `.calcit/modules0243`；当前本地视图按精确发布版本准备了 14 个模块，
仅用于迁移检查，不能替代未来独立 CI 的 strict Caps 安装。

17 个命名空间的旧 import 标记已通过官方事务规范化。进程管理模块冷检查 10/10 通过；
命令解析在真实入口检查 `List<String>`，返回 Enum，不再使用 unsafe 强转，
进程查询按 Option 分支处理，替换已退役的 `join-str`。重新生成解析入口 JS 后，原四个场景回归通过。
服务端及共享公开定义冷检查 80/80、服务端可达检查 99/99 通过；原路径打印示例改为带断言的原生测试，
保留原七个场景。已核对全部导入及精确代码引用，退休四个未使用的工具函数和对应陈旧导入。

数据库五个固定集合字段使用真实 Database 结构，未知根字段保存在 extensions 并原样编码回去。
磁盘及公开投影仍为原 Map，数字 PID 和内部 Map 记录不改格式；并不声称这些异构记录已全部静态闭合。
账号、消息、日志与工作流操作在实际入口取得 ID/文本等具体类型，不用回调声明冒充深层值证明。
历史 Reel 的开放元数据在 updater-from-record 检查，不放宽业务 updater 的 String/Number 合同。
旧进程的内存根模型发生变化，部署时须完整重启 Node，不能只热更；无需另写存档改写脚本。
三项原生测试与四组 Node 回归覆盖路径、端口、原格式往返/扩展、账号、工作流与日志操作；
仅用内存合成状态，不创建真实账号、写实际数据库或执行进程命令。

配置现在使用真实 Site；存储路径通过类型化环境/路径适配器读取。
可用 `TERMINA_STORAGE_FILE` 指定绝对存储路径，未设置时仍使用原 HOME/.config/termina.cirru；
该参数仅选择数据文件，**不意味着网络隔离**，更不能用它作为直接启动服务的许可。
已修复并发布 [ws-edn 0.0.44](https://github.com/mvc-works/ws-edn.calcit/releases/tag/0.0.44)，
并通过 [Cumulo Reel 0.0.60](https://github.com/Cumulo/cumulo-reel.calcit/releases/tag/0.0.60) 对齐精确依赖图，
本分支同时使用这两个正式版本，不通过 root override 绕过 strict。
服务端已接入可选 `HOST`（显式使用 `127.0.0.1` 才是回环；省略仍保留原 Node 默认），
以及 `NO_VERSION_CHECK=1` 跳过主入口 npm 版本请求。完整类型与协议迁移前仍不启动服务做网络测试。

修正 nil user-id 被 Option 的 key 存在性误判为已登录、匿名 session 导致成员投影异常，
并用合成数据验证登录态及密码字段省略；缓存查询按 Option 解包，不把 Option 本身传给 diff。
服务端 ReelState 保留实际 Db 泛型，持久化保留数字 PID key；定时器改为真实 NodeTimerHost，
SIGINT 回调按实际零参数合同声明。没有为了通过检查假造 Fn/JsObject 或放宽预算。
前端入口仍有派发、状态/控件等类型错误，且 FFI 仍有 unsafe 待迁移；
上述服务端检查不代表完整 strict、前端生产构建或服务运行验收通过。
后续将 op-id 改用正式 JS-FFI 的随机 UUID，时间使用 `unix-time-ms`；已存 ID 不变，新 ID 仍为 String，
调用方不应依赖旧 nanoid 的长度。端口使用受检 Number 解析，保留配置端口和 Node 的 0 随机端口，
非法尾缀、小数、非有限值及越界值拒绝，不再让 parseInt 静默截断。
仍有 17 处 unsafe 待迁移，不把数字减少冒称完成。

前端状态派发已在真实入口解码 List 游标和更新后的根 Map，替换仅有静态声明的断言。
登录表单保留用户名/密码 Map 与原缓存 key；输入和登录提交均改用单个 Enum，事件回调保留实际 Respo 合同。
登录公开冷检查 3/3、独立 JS 生成及初始/旧状态渲染和两个输入事件回放通过；
回放没有访问浏览器存储或启动服务，尚未验证实际浏览器登录与账号缓存写入。
当前整页可达检查 355/367 通过，另有 5 个失败、7 个依赖阻塞；完整 strict 仍未通过。
服务端 99/99、三项原生测试和四组 Node 回归重跑通过，没有以局部检查冒称全项目完成。

命令按钮、列表行与编辑器已改为单 Enum 派发。编辑器提交使用实际两参数合同，
弹窗关闭回调显式接收 dispatch；保留原 Map 草稿、工作流 ID、命令 ID 与工作目录拼接规则。
命令命名空间冷检查 4/4、独立新生成 JS 的三组组件回放通过（路径、输入、提交并关闭弹窗），
与原后端测试合计 Node 7/7；测试只捕获合成操作，不执行命令、连接服务或访问真实数据。
组件测试使用 `out-page/` 的生成模块，最终仍须在完整前端生成后一起运行，不能用局部生成冒称整页构建。
当前整页可达检查为 357/367 通过，另有 4 个失败、6 个依赖阻塞；完整 strict 仍未完成。
仅命名入口加载的依赖无法通过 def/schema 查询的问题已提交 [Calcit #2223](https://github.com/calcit-lang/calcit/issues/2223)，
当前通过只读查询实际依赖 Snapshot 确认接口，不改依赖缓存或新增编译器规则。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
