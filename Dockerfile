FROM petzoldf/cb_base_alpine_apache_php7:latest

# Version
ENV COMPOSER_VERSION 1.1.2

RUN apk --update add yarn nodejs wget curl nano openssl git && rm /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php5 -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && \
    chmod +x /usr/local/bin/composer

RUN npm -g install bower

EXPOSE 80