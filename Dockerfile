FROM php:8.2-apache

# Установка необходимых расширений
RUN docker-php-ext-install pdo pdo_mysql

# Копирование файлов вашего приложения в контейнер
COPY . /var/www/html

# Установка прав доступа
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
