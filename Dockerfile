FROM openjdk:17-slim-buster

RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -s -o /tmp/cypher.zip https://dist.neo4j.org/cypher-shell/cypher-shell-4.2.2.zip?_ga=2.254804363.2006455872.1614622703-900863663.1613362102 && \
    unzip -d /opt /tmp/cypher.zip && \
    rm -rf \
        /var/lib/apt/lists/* \
        /tmp/* \
        /var/tmp/* \
        /usr/share/man \
        /usr/share/doc \
        /usr/share/doc-base

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENV PATH=/opt/cypher-shell:$PATH
ENV CYPHER_HOME=/home/cypher
RUN useradd -ms /bin/bash cypher


USER cypher
WORKDIR ${CYPHER_HOME}
ENTRYPOINT ["/entrypoint.sh"]