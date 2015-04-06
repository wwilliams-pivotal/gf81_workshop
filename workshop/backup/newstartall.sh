#!/bin/bash

. ./setup.sh

gfsh <<!
start locator --name=locator1 --properties-file=./locator/gemfire.properties --bind-address=192.168.1.121 --port=10334 --dir=locator --J=-Xms256m --J=-Xmx256m
start server --name=server1 --cache-xml-file=./server1/cache-people.xml --properties-file=./server1/gemfire.properties --locators=192.168.1.121[10334] --dir=server1 --J=-Xms512m --J=-Xmx512m --classpath=../lib/clientapp.jar:../lib/domain.jar:../lib/security.jar
start server --name=server2 --cache-xml-file=./server2/cache-people.xml --properties-file=./server2/gemfire.properties --locators=192.168.1.121[10334] --dir=server2 --server-port=40405 --J=-Xms512m --J=-Xmx512m --classpath=../lib/clientapp.jar:../lib/domain.jar:../lib/security.jar
list members;
list regions;
exit;
!
