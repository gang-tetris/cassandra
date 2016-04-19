FROM cassandra:2.2

ENV MAX_HEAP_SIZE "256M"

ENV HEAP_NEWSIZE "128M"

RUN sed 's/#MAX_HEAP_SIZE="4G"/MAX_HEAP_SIZE="$MAX_HEAP_SIZE"/g' /etc/cassandra/cassandra-env.sh -i

RUN sed 's/#HEAP_NEWSIZE="800M"/HEAP_NEWSIZE="$HEAP_NEWSIZE"/g' /etc/cassandra/cassandra-env.sh -i

