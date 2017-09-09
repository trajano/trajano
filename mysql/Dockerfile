FROM mysql:latest
COPY client.cnf /
COPY docker-entrypoint.sh /
RUN chmod 400 /client.cnf
RUN chmod 700 /docker-entrypoint.sh

