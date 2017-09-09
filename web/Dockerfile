FROM linuxserver/letsencrypt
#RUN apk add --update \
#    php7-fpm \
#    php7-mysqlnd \
#  && rm -rf /var/cache/apk/*
COPY site-confs/* /config/nginx/site-confs/
COPY 00-wait-for-volume.sh /etc/cont-init.d/
RUN chmod 700 /etc/cont-init.d/00-wait-for-volume.sh
