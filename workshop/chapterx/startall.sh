#!/bin/bash

LOCATOR_PORT=10334
SERVER2_PORT=40405
PROJECT_JARS=../../projects/Domain/target/Domain-1.jar
LOCAL_IP=
IP=$(ifconfig | awk '/inet /{print substr($2,1)}' | tail -n1)

. ../setenvironment.sh

gfsh <<!

start locator --name=locator --properties-file=config/locator.properties --bind-address=localhost --port=$LOCATOR_PORT --J=-Xms256m --J=-Xmx256m --classpath=$GEMFIRE/locator-dependencies.jar

start server --name=server1 --locators=localhost[$LOCATOR_PORT] --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:$PROJECT_JARS --cache-xml-file=config/preloaded.xml --properties-file=config/gemfire.properties --J=-Dgemfire.start-dev-rest-api=true --J=-Dgemfire.http-service-bind-address=$IP --J=-Dgemfire.http-service-port=7075

start server --name=server2 --locators=localhost[$LOCATOR_PORT] --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:$PROJECT_JARS --cache-xml-file=config/preloaded2.xml --properties-file=config/gemfire.properties --server-port=$SERVER2_PORT

list members;

list regions;

exit;
!