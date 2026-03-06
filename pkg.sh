#!/bin/bash
rm -rf /opt/liquibase
mkdir -p /opt/liquibase
mvn clean install -pl liquibase-dist -am -Pwith-mysql -DskipTests
cd liquibase-dist/target
tar xzf liquibase-0-SNAPSHOT.tar.gz -C /opt/liquibase/
cd /opt/liquibase/skills/liquibase-updator
chmod +x skill-wrapper.sh