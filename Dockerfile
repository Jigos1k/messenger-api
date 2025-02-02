# Используем официальный образ PHP с Apache
FROM php:8.2-apache

# Устанавливаем необходимые расширения
RUN docker-php-ext-install pdo pdo_mysql

# Копируем файлы проекта в контейнер
COPY . /var/www/html

# Устанавливаем права доступа
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Настраиваем рабочую директорию
WORKDIR /var/www/html

# Открываем порт 80
EXPOSE 80
