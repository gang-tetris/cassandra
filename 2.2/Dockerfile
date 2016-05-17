FROM cassandra:2.2

ENV MAX_HEAP_SIZE "256M"
ENV HEAP_NEWSIZE "128M"

COPY change_config.sh /change_config.sh

ENTRYPOINT ["/change_config.sh"]
CMD ["cassandra", "-f"]

