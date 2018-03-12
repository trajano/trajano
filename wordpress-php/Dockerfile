# FROM nginx:alpine
FROM php:fpm-alpine
#FROM wordpress:php7.0-fpm-alpine
#FROM wordpress:php7.1-apache
#FROM php:apache
#FROM boxedcode/alpine-nginx-php-fpm
#ENV APACHE_DOCUMENT_ROOT /www
#VOLUME /www
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  docker-php-ext-install mysqli gd && \
  apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev
VOLUME /var/www/html
