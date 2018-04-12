FROM alpine
RUN apk add -U exim exim-utils
#CMD ["exim", "-bdf", "-d"]
COPY update-exim4.conf /etc/exim/update-exim4.conf
CMD ["exim", "-bdf", "-q30m"]
#HEALTHCHECK --start-period=5s CMD nc localhost 25 --send-only < /dev/null || exit 1

#dc_eximconfig_configtype='satellite'
#dc_other_hostnames=''
#dc_local_interfaces='127.0.0.1'
#dc_readhost='receiver'
#dc_relay_domains=''
#dc_minimaldns='false'
#dc_relay_nets=''
#dc_smarthost='in-v3.mailjet.com:587'
#CFILEMODE='644'
#dc_use_split_config='false'
#dc_hide_mailname='true'
#dc_mailname_in_oh='true'
#dc_localdelivery='mail_spool'