#!/bin/bash

. ./setup.sh

gfsh <<!
start locator --name=locator1 --properties-file=config/locator.properties --bind-address=192.168.1.121 --port=10334 --dir=locator --J=-Xms256m --J=-Xmx256m
start server --name=server1 --cache-xml-file=config/cache.xml --properties-file=config/gemfire.properties --locators=192.168.1.121[10334] --dir=server1 --J=-Xms512m --J=-Xmx512m --classpath=../lib/clientapp.jar --J=-Dgemfire.start-dev-rest-api=true --J=-Dgemfire.http-service-bind-address=localhost
start server --name=server2 --locators=192.168.1.121[10334] --dir=server2 --J=-Xms512m --J=-Xmx512m --classpath=../lib/clientapp.jar --server-port=40405 
list members;
list regions;
exit;
!
