#!/bin/sh -e
if [ ! -e /etc/letsencrypt/live ]
then
  certbot -n -q certonly --standalone --email arch@trajano.net --agree-tos --rsa-key-size 4096 -d trajano.net -d www.trajano.net -d i.trajano.net -d gw.trajano.net -d site.trajano.net -d ms.trajano.net
  openssl dhparam -out /etc/letsencrypt/dhparams.pem 2048 > /dev/null
fi
exec nginx -g "daemon off;"
