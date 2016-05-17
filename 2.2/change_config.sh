#!/bin/bash

sed 's/#MAX_HEAP_SIZE="4G"/MAX_HEAP_SIZE="$MAX_HEAP_SIZE"/g' /etc/cassandra/cassandra-env.sh -i
sed 's/#HEAP_NEWSIZE="800M"/HEAP_NEWSIZE="$HEAP_NEWSIZE"/g' /etc/cassandra/cassandra-env.sh -i

exec /docker-entrypoint.sh $@

exit 0

