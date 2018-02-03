#!/bin/sh
if [ ! -e /etc/letsencrypt/live ]
then
  certbot certonly -q --standalone --email arch@trajano.net --agree-tos --rsa-key-size 4096 -d trajano.net -d www.trajano.net -d i.trajano.net -d gw.trajano.net -d site.trajano.net -d ms.trajano.net
fi
exec nginx -g "daemon off;"
