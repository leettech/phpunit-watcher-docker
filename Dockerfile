FROM composer as phpunit-watcher

RUN composer global require spatie/phpunit-watcher && \
    composer global clear-cache

FROM php:7.1-alpine

COPY --from=phpunit-watcher /tmp /.composer

ENV PATH $PATH:/.composer/vendor/bin

WORKDIR /app