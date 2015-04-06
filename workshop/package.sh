mkdir -p chapter2/lib
cp projects/Domain/target/Domain-1.jar chapter2/lib/
cp config/cache.xml chapter2/config/

mkdir -p chapter3/lib
cp config/cache.xml chapter3/config/

mkdir -p chapter4/lib
cp projects/Domain/target/Domain-1.jar chapter4/lib/
cp chapter3/config/cache.xml chapter4/config/

mkdir -p chapter5/lib
cp projects/PeopleDomain/target/PeopleDomain-1.jar chapter5/lib

mkdir -p chapter6/lib
cp projects/PeopleDomain/target/PeopleDomain-1.jar chapter6/lib
cp projects/ClientApp/target/ClientApp-1.jar chapter6/lib
cp chapter4/endstate/config/cache.xml chapter6/config/cache.xml

mkdir -p chapter7/lib
cp chapter4/endstate/config/cache.xml chapter7/config/cache.xml

mkdir -p chapter8/lib
cp chapter4/endstate/config/cache.xml chapter8/config/
cp -r chapter4/data chapter8/
cp chapter6/config/query-client.xml chapter8/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter8/lib
cp projects/Domain/target/Domain-1.jar chapter8/lib/

mkdir -p chapter12/lib
cp chapter4/endstate/config/cache.xml chapter12/config/
cp chapter6/config/query-client.xml chapter12/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter12/lib
cp projects/GemServer/target/GemServer-1.jar chapter12/lib/

mkdir -p chapter13/lib
cp config/datalocations-cache-no-storage.xml chapter13/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter13/lib

mkdir -p chapter14/lib
cp config/datalocations-cache-no-storage.xml chapter14/config/
cp projects/ClientApp/target/ClientApp-1.jar chapter14/lib
rm -rf chapter14/server3

mkdir -p chapter15/lib
cp config/cache-people.xml chapter15/config/

