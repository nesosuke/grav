FROM php:7.4-fpm
RUN apt-get update && \
    apt-get install -y git libzip-dev libonig-dev libxml2-dev libpng-dev && \
    docker-php-ext-install zip mbstring dom gd
USER www-data:www-data
