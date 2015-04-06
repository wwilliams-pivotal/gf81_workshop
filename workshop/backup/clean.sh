
cd server1
rm *.log
rm BACKUPDEFAULT*
rm DRLK_IFDEFAULT.lk
rm vf.*
rm .DS_Store
rm -rf persistData1
cd ..

cd server2
rm *.log
rm BACKUPDEFAULT*
rm DRLK_IFDEFAULT.lk
rm vf.*
rm .DS_Store
rm -rf persistData1
cd ..

cd locator
rm *.log
rm loc*
rm vf.*
rm *.dat
rm -rf ConfigDiskDir_locator1
rm .DS_Store
cd ..
