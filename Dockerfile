FROM php:8.3-rc-apache

RUN apt-get update
RUN apt-get install --yes --force-yes cron g++ gettext libicu-dev openssl libc-client-dev libkrb5-dev libxml2-dev libfreetype6-dev libgd-dev libmcrypt-dev bzip2 libbz2-dev libtidy-dev libcurl4-openssl-dev libz-dev libmemcached-dev libxslt-dev

RUN apt-get install --no-install-recommends --assume-yes --quiet -y aptitude git telnet net-tools w3m wget inetutils-ping p7zip-full file ssh nano lsof htop nano certbot python3-certbot-apache dnsutils openssh-server

# RUN a2enmod rewrite

RUN docker-php-ext-install mysqli 
RUN docker-php-ext-enable mysqli

RUN docker-php-ext-configure gd --with-freetype=/usr --with-jpeg=/usr
RUN docker-php-ext-install gd

COPY ./src/html/ /var/www/html/

EXPOSE 80


