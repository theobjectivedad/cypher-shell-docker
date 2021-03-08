# Cypher Shell Container


## Quickstart

Create an environment configuration file to store connection information

```
touch cypher_secrets.env
```

Next add your connection information to the file: 

```
CYPHER_URL=bolt://localhost:7687
CYPHER_USER=neo4j
CYPHER_PASS=value
```


```
export CYPHER_SECRETS=~/cypher_secrets.env
export PATH=$PATH
```

