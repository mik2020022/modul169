FROM php:8.0-apache

RUN apt update \
&& apt -y upgrade \
&& apt install -y \
	libtidy-dev \
	libzip-dev \
&& docker-php-ext-install mysqli pdo_mysql tidy zip
	
COPY site/* /var/www/html /
