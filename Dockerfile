FROM ittools/abstract-phper80
LABEL maintainer="jakub@ittools.pl"

RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
        php8.0-mysql \
        php8.0-xml \
    && apt-get autoremove --yes \
    && apt-get clean --yes \
    && rm --recursive --force /var/lib/apt/lists/*

#    php-xdebug \
#    php-memcached && \
#    php8.0-memcached \
#    php8.0-redis \
#    php-xdebug \
#    php-memcached && \
