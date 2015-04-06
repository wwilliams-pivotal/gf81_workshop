gfsh <<!
connect --locator=192.168.1.121[10334];
stop server --name=server2;
stop server --name=server1;
stop locator --name=locator1;
exit;
!
