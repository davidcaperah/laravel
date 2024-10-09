# Usa la imagen base de PHP
FROM php:8.2-fpm

# Instala dependencias requeridas por Composer y PHP
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    && docker-php-ext-install pdo_mysql fileinfo

# Instala Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
