FROM php:8.2-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    cron \
    supervisor \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy all application files
COPY . .

# Validate and fix composer.lock before install
RUN composer validate --strict \
    && composer update --lock \
    && composer install --no-interaction --prefer-dist --optimize-autoloader

# Copy supervisor config
COPY ./docker/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Start supervisor
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
