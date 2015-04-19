#!/bin/bash

# assign different ports than those of data center 2
LOCATOR_PORT=10335
SERVER1_PORT=40406
SERVER2_PORT=40407
PROJECT_JARS=../../../projects/Domain/target/Domain-1.jar
LOCAL_IP=
IP=$(ifconfig | awk '/inet /{print substr($2,1)}' | tail -n1)

echo IP=$IP

. ../../setenvironment.sh

#
#  Note that the two servers here point to the locator on port 10335 and not 10334
#

gfsh <<!

start locator --name=locator2 --properties-file=config/locator.properties --bind-address=localhost --port=$LOCATOR_PORT --dir=locator2 --J=-Xms256m --J=-Xmx256m --classpath=$GEMFIRE/locator-dependencies.jar

start server --name=server3 --locators=localhost[$LOCATOR_PORT] --dir=server3 --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:$PROJECT_JARS --cache-xml-file=config/cache.xml --properties-file=config/gemfire.properties  --server-port=$SERVER1_PORT --J=-Dgemfire.ALLOW_PERSISTENT_TRANSACTIONS=true

start server --name=server4 --locators=localhost[$LOCATOR_PORT] --dir=server4 --J=-Xms512m --J=-Xmx512m --classpath=$GEMFIRE/server-dependencies.jar:$PROJECT_JARS --cache-xml-file=config/cache.xml  --properties-file=config/gemfire.properties --server-port=$SERVER2_PORT --J=-Dgemfire.ALLOW_PERSISTENT_TRANSACTIONS=true

list members;

list regions;

exit;
!
