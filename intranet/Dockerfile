FROM nginx:alpine
EXPOSE 443
VOLUME /etc/letsencrypt
COPY conf.d/* /etc/nginx/conf.d/
COPY ca-cert-trajano.pem /etc/nginx/

