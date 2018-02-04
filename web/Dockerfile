FROM nginx:alpine
RUN apk add py-urllib3 openssl certbot --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.7/community/  --repository http://dl-3.alpinelinux.org/alpine/v3.7/main/ \
  && rm -rf /var/cache/apk/*
# --repository http://dl-3.alpinelinux.org/alpine/3.7/community/
#FROM linuxserver/letsencrypt:latest
#RUN apk add --update \
#    php7-fpm \
#    php7-mysqlnd \
#  && rm -rf /var/cache/apk/*
# COPY site-confs/* /config/nginx/site-confs/
#COPY 00-wait-for-volume.sh /etc/cont-init.d/
#VOLUME /config
EXPOSE 443
COPY conf.d/* /etc/nginx/conf.d/
VOLUME /etc/letsencrypt
COPY bootstrap.sh /
RUN chmod 700 /bootstrap.sh
ENV TZ=America/Toronto
CMD [ "/bootstrap.sh" ]
