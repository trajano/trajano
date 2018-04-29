# This is used as the gateway proxy that would route to the individual servers.
FROM trajano/trajano/nginx-letsencrypt
ENV TZ=America/Toronto
COPY conf.d/* /etc/nginx/conf.d
COPY stream.d/* /etc/nginx/stream.d
