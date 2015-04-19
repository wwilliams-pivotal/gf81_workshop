cd projects/Domain/target/classes
jar cf ../Domain-1.jar io/*
cd ../../../
cd PeopleDomain/target/classes
jar cf ../PeopleDomain-1.jar io/*
cd ../../../
cd ClientApp/target/classes
jar cf ../ClientApp-1.jar io/*
cd ../../../
cd GemServer/target/classes
jar cf ../GemServer-1.jar io/*
cd ../../../
cd GemFireFunction/target/classes
jar cf ../GemServer-1.jar io/*
cd ../../../
cd ..



mkdir -p chapter2/lib
mkdir -p chapter2/locator
mkdir -p chapter2/server1
mkdir -p chapter2/server2
cp projects/Domain/target/Domain-1.jar chapter2/lib/
cp config/gemfire.properties chapter2/config/
cp config/cache.xml chapter2/config/
cp scripts/clean.sh chapter2/
cp scripts/stopall.sh chapter2/

mkdir -p chapter3/lib
mkdir -p chapter3/locator
mkdir -p chapter3/server1
mkdir -p chapter3/server2
cp config/gemfire.properties chapter3/config/
cp config/cache.xml chapter3/config/
cp scripts/clean.sh chapter3/
cp scripts/stopall.sh chapter3/
cp -r data chapter3/

mkdir -p chapter4/lib
mkdir -p chapter4/locator
mkdir -p chapter4/server1
mkdir -p chapter4/server2
cp projects/Domain/target/Domain-1.jar chapter4/lib/
cp config/gemfire.properties chapter4/config/
cp chapter3/config/cache.xml chapter4/config/
cp scripts/clean.sh chapter4/
cp scripts/stopall.sh chapter4/
cp -r data chapter4/

mkdir -p chapter5/lib
mkdir -p chapter5/locator
mkdir -p chapter5/server1
mkdir -p chapter5/server2
cp projects/PeopleDomain/target/PeopleDomain-1.jar chapter5/lib
cp config/gemfire.properties chapter5/config/
cp scripts/clean.sh chapter5/
cp scripts/stopall.sh chapter5/
cp -r data chapter5/

mkdir -p chapter6/lib
mkdir -p chapter6/locator
mkdir -p chapter6/server1
mkdir -p chapter6/server2
cp projects/PeopleDomain/target/PeopleDomain-1.jar chapter6/lib
cp projects/ClientApp/target/ClientApp-1.jar chapter6/lib
cp config/gemfire.properties chapter6/config/
cp config/query-client.xml chapter6/config/
cp chapter4/endstate/config/cache.xml chapter6/config/cache.xml
cp scripts/clean.sh chapter6/
cp scripts/stopall.sh chapter6/
cp -r data chapter6/

mkdir -p chapter7/lib
mkdir -p chapter7/locator
mkdir -p chapter7/server1
mkdir -p chapter7/server2
cp config/gemfire.properties chapter7/config/
cp chapter4/endstate/config/cache.xml chapter7/config/cache.xml
cp scripts/clean.sh chapter7/
cp scripts/stopall.sh chapter7/
cp -r data chapter7/

mkdir -p chapter8/lib
mkdir -p chapter8/locator
mkdir -p chapter8/server1
mkdir -p chapter8/server2
cp chapter4/endstate/config/cache.xml chapter8/config/
cp -r chapter4/data chapter8/
cp config/gemfire.properties chapter8/config/
cp config/query-client.xml chapter8/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter8/lib
cp projects/Domain/target/Domain-1.jar chapter8/lib/
cp scripts/clean.sh chapter8/
cp scripts/stopall.sh chapter8/
cp -r data chapter8/

mkdir -p chapter12/lib
mkdir -p chapter12/locator
mkdir -p chapter12/server1
mkdir -p chapter12/server2
cp config/gemfire.properties chapter12/config/
cp chapter4/endstate/config/cache.xml chapter12/config/
cp chapter6/config/query-client.xml chapter12/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter12/lib
cp projects/GemServer/target/GemServer-1.jar chapter12/lib/
cp scripts/clean.sh chapter12/
cp scripts/stopall.sh chapter12/
cp -r data chapter12/

mkdir -p chapter13/lib
mkdir -p chapter13/locator
mkdir -p chapter13/server1
mkdir -p chapter13/server2
cp config/gemfire.properties chapter13/config/
cp config/datalocations-cache-no-storage.xml chapter13/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter13/lib
cp scripts/clean.sh chapter13/
cp scripts/stopall.sh chapter13/
cp -r data chapter13/

mkdir -p chapter14/lib
mkdir -p chapter14/locator
mkdir -p chapter14/server1
mkdir -p chapter14/server2
cp config/gemfire.properties chapter14/config/
cp config/datalocations-cache-no-storage.xml chapter14/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter14/lib
rm -rf chapter14/server3
cp scripts/clean.sh chapter14/
cp scripts/stopall.sh chapter14/
cp -r data chapter14/

mkdir -p chapter15/lib
mkdir -p chapter15/locator
mkdir -p chapter15/server1
mkdir -p chapter15/server2
cp config/gemfire.properties chapter15/config/
cp config/cache-persistence.xml chapter15/config/
cp scripts/clean.sh chapter15/
cp scripts/stopall.sh chapter15/
cp -r data chapter15/

mkdir -p chapter19/DataCenter1/lib
mkdir -p chapter19/DataCenter1/locator1
mkdir -p chapter19/DataCenter1/server1
mkdir -p chapter19/DataCenter1/server2
mkdir -p chapter19/DataCenter2/lib
mkdir -p chapter19/DataCenter2/locator2
mkdir -p chapter19/DataCenter2/server3
mkdir -p chapter19/DataCenter2/server4
cp -r data chapter19/DataCenter1
cp -r data chapter19/DataCenter2


mkdir -p chapter20/lib
mkdir -p chapter20/locator
mkdir -p chapter20/server1
mkdir -p chapter20/server2
cp config/gemfire.properties chapter20/config/
cp config/query-client.xml chapter20/config/
cp scripts/clean.sh chapter20/
cp scripts/stopall.sh chapter20/
cp -r data chapter20/


