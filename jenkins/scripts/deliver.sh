#!/usr/bin/env bash
set -x
cd cteratest
mvn jar:jar install:install help:evaluate -Dexpression=project.name
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x
java -jar target/${NAME}-${VERSION}.jar
#java -jar target/my-app-1.0-SNAPSHOT.jar
