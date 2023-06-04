# Why? 
I always was exhausted with all this xampp, lamp configurations and so on. I want to run one command and have my environment working. That's why I decided to create such 'template' and put it to repository.

# apache-php-docker
Basic stuff to start developing php with apache.
The main purpose of this repo is to get simple working environment with apache + php with autoloading.

Inside by default there are autoload and static analysis.

# How to start

```
docker-compose up --build --force-recreate
```
Application will be available on http://localhost:80/

# Static analysis

Run inside a container:
```
vendor/bin/phpstan analyse
```

By default, app folder will be analyzed with the phpstan rule level 9 

# Change php version

Modify 
`FROM php:8.1-apache line in Dockerfilte` to image you need, for example
`FROM php:7.1-apache` to have php 7.1 version.
