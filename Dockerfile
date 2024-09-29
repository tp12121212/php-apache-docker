FROM php:8.3-apache
COPY src/html/ /var/www/html/

RUN apt-get update
RUN apt-get install --no-install-recommends --assume-yes --quiet -y aptitude git telnet net-tools w3m wget inetutils-ping p7zip-full file ssh nano lsof htop nano certbot python3-certbot-apache dnsutils openssh-server

EXPOSE 443 80


