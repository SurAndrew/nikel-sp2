#!/bin/bash

## 6 Проверка данных по шардам
docker exec -it mongo1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

docker exec -it mongo4 mongosh --port 27022 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

# Проверка данных в базе
docker exec -it mongos_router mongosh --port 27020 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
exit(); 
EOF

