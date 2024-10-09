FROM ubuntu/apache2

RUN apt-get update && apt-get install --no-install-recommends --assume-yes --quiet -y \
composer \
libphp-phpmailer \
aptitude \
git \
telnet \
net-tools \
w3m \
wget \
inetutils-ping \
p7zip-full \
file \
ssh \
nano \
lsof \
htop \
nano \
bzip2 \
certbot \
python3-certbot-apache \
dnsutils \
openssh-server \
openssl

COPY ./src/html/ /var/www/html/
COPY ./src/script/ /usr/bin/

EXPOSE 22 80 443

CMD ["apache2-foreground"]


