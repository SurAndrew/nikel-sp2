#!/bin/bash

docker exec -it mongo3 mongosh --port 27021 --quiet <<EOF
rs.initiate(
    {
      _id : "rs1",
      members: [
        { _id : 2, host : "mongo3:27021" },
        { _id : 3, host : "mongo4:27022" }
      ]
    }
  );
exit();
EOF
