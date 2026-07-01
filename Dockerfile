FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-recommends --assume-yes \
        apache2 \
        apache2-utils \
        aptitude \
        bzip2 \
        ca-certificates \
        certbot \
        composer \
        dnsutils \
        file \
        git \
        htop \
        inetutils-ping \
        libapache2-mod-fcgid \
        libapache2-mod-php \
        libphp-phpmailer \
        lsof \
        nano \
        net-tools \
        openssl \
        p7zip-full \
        php \
        php-cli \
        php-common \
        php-curl \
        php-mbstring \
        php-xml \
        php-zip \
        python3-certbot-apache \
        telnet \
        w3m \
        wget \
    && a2enmod php8.3 \
    && a2enmod alias \
    && a2enmod headers \
    && a2enmod rewrite \
    && a2enmod ssl \
    && mkdir -p /var/run/apache2 /var/lock/apache2 /var/log/apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./src/html/ /var/www/html/
COPY ./src/script/ /usr/bin/
COPY ./src/conf/apache/apache2.conf /etc/apache2/apache2.conf

EXPOSE 80 443

CMD ["apachectl", "-D", "FOREGROUND"]
