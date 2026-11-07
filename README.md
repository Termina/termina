
Termina
------

> A simplified terminal to use servers.

Connect to WebSocket server with http://r.tiye.me/Termina/termina .

TODO: new npm package.

### 迁移状态

已配对正式 Calcit / `@calcit/procs` 0.36.0、Respo 0.19.4、Cumulo Reel 0.3.1 和 Fuzzy Filter 0.0.18，双入口通过 strict 检查。

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
