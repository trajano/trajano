FROM linuxserver/letsencrypt:latest
#RUN apk add --update \
#    php7-fpm \
#    php7-mysqlnd \
#  && rm -rf /var/cache/apk/*
# COPY site-confs/* /config/nginx/site-confs/
#COPY 00-wait-for-volume.sh /etc/cont-init.d/
COPY conf.d/* /etc/nginx/conf.d/
#RUN chmod 700 /etc/cont-init.d/00-wait-for-volume.sh
VOLUME /config
RUN mkdir -p /asdf/asdf/asdf
VOLUME /asdf/asdf/asdf
