FROM ubuntu/apache2

RUN apt-get update
# RUN apt-get install --yes --force-yes cron g++ gettext libicu-dev libc-client-dev libkrb5-dev libxml2-dev libfreetype6-dev libgd-dev libmcrypt-dev  libbz2-dev libtidy-dev libcurl4-openssl-dev libz-dev libmemcached-dev libxslt-dev

RUN apt-get install --no-install-recommends --assume-yes --quiet -y composer libphp-phpmailer aptitude git telnet net-tools w3m wget inetutils-ping p7zip-full file ssh nano lsof htop nano bzip2 certbot python3-certbot-apache dnsutils openssh-server openssl
# RUN apt-get install --no-install-recommends --assume-yes --quiet -y composer libphp-phpmailer

# RUN a2enmod rewrite

# RUN docker-php-ext-install mysqli 
# RUN docker-php-ext-enable mysqli

# RUN docker-php-ext-configure gd --with-freetype=/usr --with-jpeg=/usr
# RUN docker-php-ext-install gd

COPY ./src/html/ /var/www/html/
COPY ./src/script/ /usr/bin/

EXPOSE 80
EXPOSE 443
EXPOSE 22

CMD ["apache2-foreground"]


