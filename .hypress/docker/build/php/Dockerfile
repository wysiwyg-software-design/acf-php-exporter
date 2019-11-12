FROM php:7.2-fpm

#User www
RUN groupadd -g 500 www
RUN useradd -g 500 -u 500 www

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli