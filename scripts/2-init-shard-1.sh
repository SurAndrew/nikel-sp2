#!/bin/bash

## 3 Инициализация шард

docker exec -it mongo1 mongosh --port 27018 --quiet <<EOF
rs.initiate(
    {
      _id : "rs0",
      members: [
        { _id : 0, host : "mongo1:27018" },
        { _id : 1, host : "mongo2:27019" }
      ]
    }
);
exit();
EOF

