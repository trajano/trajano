docker-compose build intranet web && docker-compose push intranet web
docker stack deploy -c docker-compose.yml --prune --with-registry-auth trajano
