
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 0.30.1 迁移候选（尚未完成）

此分支尚不能发布或部署：整页检查与完整 strict 仍有阻塞，尚未验收真实浏览器登录、缓存写入和隔离服务。
目前使用配对 CLI/procs 0.30.1-alpha.5；正式 0.30.1 的发布资产仍未齐全。模块使用精确正式 tag，
包括 [Fuzzy Filter 0.0.16](https://github.com/mvc-works/fuzzy-filter/releases/tag/0.0.16)、
[ws-edn 0.0.44](https://github.com/mvc-works/ws-edn.calcit/releases/tag/0.0.44) 和
[Cumulo Reel 0.0.60](https://github.com/Cumulo/cumulo-reel.calcit/releases/tag/0.0.60)，不使用 root override 绕过 strict。

用户需要注意：

- 数据库存档和公开投影仍为原 Map，保留数字 PID、未知根扩展和原账号缓存 key；没有存档改写脚本。内部 Database/ReelState 已更换模型，部署须完整重启 Node，不能仅热更。
- 新 op-id 为 String UUID，时间使用 `unix-time-ms`；既有 ID 不变，不要依赖旧 nanoid 长度。端口保留配置值和 Node 的随机端口 0，拒绝非法尾缀、小数及越界值。
- 登录和命令编辑改为单 Enum 派发、真实两参数回调；命令字段和工作目录拼接不变。进程详情使用私有类型化筛选状态，可读取旧 Map；重复日志使用不同索引 key，HTTP 链接恢复正常匹配。
- 服务模块初始化会读取数据库，主入口会监听端口并允许执行命令。不要直接用 `node server.mjs` 做验证；目前未启动真实服务、读取用户数据或执行命令。

隔离验收需要同时明确设置绝对 `TERMINA_STORAGE_FILE`、`HOST=127.0.0.1` 和 `NO_VERSION_CHECK=1`。
存储路径默认仍为 HOME/.config/termina.cirru；单独改路径不等于网络隔离，省略 HOST 仍保留 Node 原默认监听行为。

当前证据与限制：

- 服务端可达检查 99/99、三项原生测试通过。Node 回归 11/11，覆盖原命令解析、状态操作及组件；只使用合成内存数据和捕获派发，不运行进程。
- 进程/详情/资料页公开冷检查 20/20；组件从同版源码副本的只读引用入口生成，未执行服务入口。测试使用 `out-page/`，最终仍须在完整前端生成后重跑，局部回放不等于整页构建。
- 整页当前为 361/368 通过、2 个失败、5 个依赖阻塞；完整 strict 未通过。仍有 16 处 FFI unsafe，不能以取消门禁或扩大预算冒称完成。
- 本地 14 模块视图不替代未来独立 CI 的严格 Caps 安装；不执行本地 Caps、不提交生成代码，不恢复 compact.cirru/package.cirru。
- 源码查询入口缺口已汇报 [Calcit #2223](https://github.com/calcit-lang/calcit/issues/2223)；临时只读查询实际依赖 Snapshot，不修改缓存或增加编译器迁移规则。

### Workflow

https://github.com/Cumulo/cumulo-workflow.calcit/ .

### License

MIT
