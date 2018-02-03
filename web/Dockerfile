FROM nginx:alpine
RUN apk add py-urllib3 certbot --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.7/community/  --repository http://dl-3.alpinelinux.org/alpine/v3.7/main/
# --repository http://dl-3.alpinelinux.org/alpine/3.7/community/
#FROM linuxserver/letsencrypt:latest
#RUN apk add --update \
#    php7-fpm \
#    php7-mysqlnd \
#  && rm -rf /var/cache/apk/*
# COPY site-confs/* /config/nginx/site-confs/
#COPY 00-wait-for-volume.sh /etc/cont-init.d/
#RUN chmod 700 /etc/cont-init.d/00-wait-for-volume.sh
#VOLUME /config
EXPOSE 443
COPY conf.d/* /etc/nginx/conf.d/
VOLUME /etc/letsencrypt
COPY bootstrap.sh /
ENV EMAIL=arch@trajano.net
ENV URL=trajano.net
ENV SUBDOMAINS=www,i,site,gw,ms
ENV TZ=America/Toronto
ENV HTTPVAL=true
CMD [ "/bootstrap.sh" ]
