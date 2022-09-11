FROM dockette/php:8.0-fpm

ENV NETTE_DEBUG=0

COPY ./files/php-fpm.conf /etc/php/8.0/fpm/php-fpm.conf

RUN apt-get update && \
    apt-get install nodejs npm -y && \
    npm install -g pnpm && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

WORKDIR /srv
