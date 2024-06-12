FROM php:8.3

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
  git \
  curl \
  zip \
  unzip \
  && apt-get clean

ENV COMPOSER_ALLOW_SUPERUSER=1 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./app/composer.* ./

# Expose port 8000
EXPOSE 8000

# Start the PHP built-in server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "public/"]

