# FROM nginx:alpine
FROM php:fpm-alpine
#FROM wordpress:php7.0-fpm-alpine
#FROM wordpress:php7.1-apache
#FROM php:apache
#FROM boxedcode/alpine-nginx-php-fpm
#ENV APACHE_DOCUMENT_ROOT /www
#VOLUME /www
RUN docker-php-ext-install mysqli
VOLUME /var/www/html