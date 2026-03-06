# Skill: liquibase-updator

## 描述
这是一个用于执行 Liquibase 数据库迁移任务的技能。它运行在 Ubuntu 24.04 环境下，通过调用 `/opt/liquibase` 目录中的命令行工具来同步数据库变更。

## 使用场景
- 当需要执行数据库 Schema 更新时（update）。
- 当需要检查当前数据库状态或回滚变更时。

## 调用方式
通过 bash 运行该目录下的 `skill-wrapper.sh` 脚本。

### 参数说明
1. `changeLogFile` (必填): 变更日志文件的路径。可以是相对于 `/opt/liquibase` 的相对路径（例如 `examples/yaml/example-changelog.yaml`）。
2. `action` (可选): 执行的动作。默认为 `update`。支持 `update`, `rollback`, `status`, `diff` 等。

### 示例指令
```bash
./skill-wrapper.sh examples/yaml/example-changelog.yaml update
