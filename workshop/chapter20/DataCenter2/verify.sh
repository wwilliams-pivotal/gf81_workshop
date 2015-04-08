gfsh <<!
connect --locator=localhost[10335];
list members;
list regions;
query --query="select * from /departments";
query --query="select * from /employees";
exit;
!

