#!/bin/bash

LOCATOR_PORT=10334
SERVER2_PORT=40405

. ../setenvironment.sh

gfsh <<!

start locator --name=locator1 --properties-file=config/locator.properties --bind-address=localhost --port=$LOCATOR_PORT --dir=locator --J=-Xms256m --J=-Xmx256m --classpath=$GEMFIRE/locator-dependencies.jar

start server --name=server1 --locators=localhost[$LOCATOR_PORT] --dir=server1 --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:../lib/clientapp.jar:../lib/domain.jar --cache-xml-file=config/cache.xml --properties-file=config/gemfire.properties

start server --name=server2 --locators=localhost[$LOCATOR_PORT] --dir=server2 --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:../lib/clientapp.jar:../lib/domain.jar --cache-xml-file=config/cache.xml  --properties-file=config/gemfire.properties --server-port=$SERVER2_PORT

list members;

list regions;

exit;
!
