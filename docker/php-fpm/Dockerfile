FROM php:7.2.13-fpm-alpine3.8

COPY php.ini /usr/local/etc/php/conf.d/php.override.ini
COPY www.conf /usr/local/etc/php-fpm.d/www.conf

RUN curl -sS https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

RUN addgroup -g 1000 -S app && \
    adduser -u 1000 -S app -G app
RUN chown -R app /var/log/
WORKDIR /app
RUN chown -R app /app
USER app
