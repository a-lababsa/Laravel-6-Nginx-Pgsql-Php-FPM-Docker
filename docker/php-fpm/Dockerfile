FROM alpine:latest

COPY php.ini /etc/php7/conf.d/php.ini
COPY www.conf /etc/php7/php-fpm.d/www.conf

RUN apk add --update \
    php7-fpm \
    php7-pdo_pgsql \
    php7-apcu \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-intl \
    php7-mcrypt \
    php7-fileinfo\
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-mysqli \
    php7-xml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-simplexml \
    php7-xdebug \
    php7-zip \
    php7-xmlwriter \
    make \
    curl

RUN curl -sS https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

RUN addgroup -g 1000 -S app && \
    adduser -u 1000 -S app -G app
RUN chown -R app /var/log/
WORKDIR /app
RUN chown -R app /app
USER app
CMD ["php-fpm7", "-F"]
