#!/bin/bash

## 5 Проверка данных по шардам
docker exec -it shard1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

docker exec -it mongo4 mongosh --port 27022 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

