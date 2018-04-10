#!/bin/sh -e
ln -s /proc/fd/2 /dev/log
postmap /run/secrets/sasl_passwd
exec /usr/sbin/postfix -v -v start-fg
