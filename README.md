## Required networks configs and secrets

    docker network create --internal --attachable -d overlay --scope swarm public
    docker network create --internal --attachable -d overlay --scope swarm intranet
    docker network create --attachable -d overlay --scope swarm backend

    docker config create i-httpd.conf ./i-httpd.conf
    docker config create ca-cert-trajano.pem ./ca-cert-trajano.pem
    docker config create web_trajano_net web/conf.d/trajano.net.conf
    docker config create web_site        web/conf.d/site.trajano.net.conf
    docker config create web_stream      web/stream.d/stream.conf

    docker secret create htpasswd_registry web/conf.d/registry.htpasswd

## Deploying

    docker stack rm trajano ; docker stack deploy -c docker-compose.yml trajano

## Intranet

    The main intranet site is volume mounted and not part of any image.  However the proxies are configured before hand.

