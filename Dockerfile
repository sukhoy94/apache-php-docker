FROM php:8.1-apache
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt update && apt install -y zip unzip && rm -rf /var/lib/apt/lists/*
RUN composer install && composer dump-autoload
RUN apachectl -D FOREGROUND
EXPOSE 80