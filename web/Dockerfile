# This is used as the gateway proxy that would route to the individual servers.
FROM nginx:1.13.10-alpine
EXPOSE 443
VOLUME /etc/letsencrypt
RUN apk add py-urllib3 openssl certbot curl --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.7/community/ --repository http://dl-3.alpinelinux.org/alpine/v3.7/main/ \
  && rm -rf /var/cache/apk/*
COPY conf.d/* /etc/nginx/conf.d/
COPY bootstrap.sh nginx.conf.stream /
RUN chmod 700 /bootstrap.sh \
 && cat nginx.conf.stream >> /etc/nginx/nginx.conf \
 && rm nginx.conf.stream
ENV TZ=America/Toronto
CMD [ "/bootstrap.sh" ]
HEALTHCHECK --start-period=30s CMD curl --fail http://localhost/ping || exit 1
