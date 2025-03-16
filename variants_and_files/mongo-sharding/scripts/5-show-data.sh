#!/bin/bash

## 5 Проверка данных по шардам
docker exec -it shard1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

docker exec -it shard2 mongosh --port 27019 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

