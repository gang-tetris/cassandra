# Cassandra Wrapper

Wrapper for Cassandra Docker.
Based on official [Cassandra Docker image](https://hub.docker.com/_/cassandra/)
and allows additional customization through
[environment variables](https://docs.docker.com/engine/reference/run/#env-environment-variables).

# Main features

This wrapper allows you to control RAM available for Cassandra.

# Default values

|Variable        |Value|
|----------------|----:|
|`MAX_HEAP_SIZE` |256M |
|`HEAP_NEWSIZE`  |100M |

# Example of use

Say, you want to 
[tune Java resources](https://docs.datastax.com/en/cassandra/2.1/cassandra/operations/ops_tune_jvm_c.html):
- set the maximum heap size for the JVM to 1G;
- set size of the young generation to 200M.

You can execute following code:
```bash
docker run --rm -e "MAX_HEAP_SIZE=1G" -e "HEAP_NEWSIZE=200M" gangtetris/cassandra:2.2
```

