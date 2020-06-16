FROM php:7.2-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY ./file-web /var/www/html
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1
  