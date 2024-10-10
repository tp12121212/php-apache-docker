FROM ubuntu/apache2

RUN apt-get update && apt-get install --no-install-recommends --assume-yes --quiet -y \
apache2-utils \
aptitude \
bzip2 \
certbot \
composer \
dnsutils \
file \
git \
htop \
inetutils-ping \
libphp-phpmailer \
lsof \
nano \
nano \
net-tools \
libapache2-mod-php \
openssh-server \
openssl \
p7zip-full \
python3-certbot-apache \
ssh \
telnet \
w3m \
wget \
&& apt-get -y autoremove \
&& apt-get clean autoclean \
&& rm -fr /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

COPY ./src/html/ /var/www/html/
COPY ./src/script/ /usr/bin/
COPY ./src/conf/apache/apache2.conf /etc/apache2/apache2.conf

EXPOSE 22 80 443

CMD ["apache2-foreground"]


