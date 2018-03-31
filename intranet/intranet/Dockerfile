#FROM nginx:alpine
FROM httpd:2.4.33-alpine
EXPOSE 443
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ca-cert-trajano.pem /usr/local/apache2/conf/ca-cert-trajano.pem
RUN chmod -R -x /usr/local/apache2/conf/
VOLUME /etc/letsencrypt
#COPY conf.d/* /etc/nginx/conf.d/
COPY location.d/* /usr/local/apache2/conf/location.d/
# /etc/nginx/
# COPY index.html /
HEALTHCHECK --start-period=5s CMD wget -q http://localhost/ -O /dev/null || exit 1
