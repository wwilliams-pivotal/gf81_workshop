# bring down servers in descending order as a discipline for advanced restarting

gfsh <<!

connect

stop server --name=server4

shutdown
Y
stop locator --name=locator2

exit;
!

