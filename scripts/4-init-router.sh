#!/bin/bash

## 4 Инициализируем роутер

docker exec -it mongos_router mongosh --port 27020  --quiet <<EOF
sh.addShard( "rs0/mongo1:27018");
sh.addShard( "rs1/mongo3:27021");
sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } )
use somedb
for(var i = 0; i < 1000; i++) db.helloDoc.insert({age:i, name:"ly"+i})
db.helloDoc.countDocuments() 
exit();
EOF
