docker-compose build && docker-compose push 
docker stack deploy -c docker-compose.yml --prune --with-registry-auth trajano
