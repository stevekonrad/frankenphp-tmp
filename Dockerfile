FROM dunglas/frankenphp:php8.4.7

RUN apt update && apt install -y bash && apt clean

ENV APP_RUNTIME="Runtime\FrankenPhpSymfony\Runtime"

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

COPY --from=composer:2.8.8 /usr/bin/composer /usr/local/bin/

RUN apt install -y git
