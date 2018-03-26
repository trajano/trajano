FROM php:7.2.3-fpm-alpine
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  docker-php-ext-install mysqli gd && \
  apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev
VOLUME /var/www/html
HEALTHCHECK --start-period=30s CMD nc -z localhost 9000 || exit 1
