#!/bin/bash

cypher-shell -a "${CYPHER_URL:-}" -u "${CYPHER_USER:-neo4j}" -p "${CYPHER_PASS:-}" $*