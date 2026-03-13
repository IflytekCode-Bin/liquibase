---
name: liquibase-updator
description: 执行 Liquibase 数据库迁移和更新任务。支持 update, rollback, status, diff 等动作，自动调用 /opt/liquibase 下的工具并关联 liquibase.properties 配置。
---

# Skill: liquibase-updator

## 描述
这是一个用于执行 Liquibase 数据库迁移任务的技能。它运行在 Linux 环境下，通过调用 `/opt/liquibase` 目录中的命令行工具来同步数据库变更。

## 使用场景
- 当需要执行数据库 Schema 更新时（update）。
- 当需要检查当前数据库状态或回滚变更时。

## 调用方式
通过 bash 运行该目录下的 `skill-wrapper.sh` 脚本。

### 参数说明
1. **changeLogFile** (必填): 变更日志文件的路径。可以是相对于 `/opt/liquibase` 的相对路径（例如 `changedata/example-changelog.yaml`）。
2. **action** (可选): 执行的动作。默认为 `update`。支持 `update`, `rollback`, `status`, `diff` 等。

### 核心配置
具体执行逻辑及数据库连接参数已在 `/opt/liquibase/liquibase.properties` 中定义，技能脚本会自动读取该配置。

### 示例指令
```bash
./skill-wrapper.sh changedata/example-changelog.yaml update