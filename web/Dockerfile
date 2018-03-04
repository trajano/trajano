# This is used as the gateway proxy that would route to the individual servers.
FROM nginx:alpine
RUN apk add py-urllib3 openssl certbot --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.7/community/  --repository http://dl-3.alpinelinux.org/alpine/v3.7/main/ \
  && rm -rf /var/cache/apk/*
EXPOSE 443
COPY conf.d/* /etc/nginx/conf.d/
VOLUME /etc/letsencrypt
COPY bootstrap.sh /
RUN chmod 700 /bootstrap.sh
ENV TZ=America/Toronto
CMD [ "/bootstrap.sh" ]
