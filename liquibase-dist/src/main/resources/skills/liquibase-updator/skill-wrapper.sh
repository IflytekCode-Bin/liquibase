#!/bin/bash
# ~/.claude/skills/liquibase-updator/skill-wrapper.sh

# 1. 定义 Liquibase 根目录
LIQUIBASE_HOME="/opt/liquibase"

# 2. 切换到该目录，确保能读取到 liquibase.properties 和 internal/lib
cd "$LIQUIBASE_HOME" || { echo "错误: 找不到目录 $LIQUIBASE_HOME"; exit 1; }

# 3. 获取参数
CHANGELOG_FILE=$1
ACTION=${2:-update} # 默认为 update

# 4. 执行命令
# 注意：直接调用 ./liquibase，因为它就在当前目录下
./liquibase --changeLogFile="$CHANGELOG_FILE" "$ACTION"