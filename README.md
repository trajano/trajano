## Required networks that need to be created externally
docker network create --internal --attachable -d overlay --scope swarm public
docker network create --internal --attachable -d overlay --scope swarm intranet