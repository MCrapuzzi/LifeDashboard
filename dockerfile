FROM php:8.0-fpm

COPY ./html/indesx.php /var/www/html/
WORKDIR /var/www/html/

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli