FROM nginx:alpine
EXPOSE 443
VOLUME /etc/letsencrypt
COPY conf.d/* /etc/nginx/conf.d/
COPY location.d/* /etc/nginx/location.d/
COPY ca-cert-trajano.pem /etc/nginx/
HEALTHCHECK --start-period=5s CMD wget -q http://localhost/ping -O /dev/null || exit 1
