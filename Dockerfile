FROM php:8.1-apache
COPY --from=composer /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN apt update && apt install -y zip unzip && rm -rf /var/lib/apt/lists/*
CMD bash -c "composer install && composer dump-autoload"
EXPOSE 80
CMD apachectl -D FOREGROUND