#!/bin/bash
# 确保在正确目录下执行，以便读取 liquibase.properties
cd /opt/liquibase

# 参数1: changeLogFile (如 examples/yaml/example-changelog.yaml)
# 参数2: action (如 update)
./liquibase --changeLogFile="$1" "$2"
