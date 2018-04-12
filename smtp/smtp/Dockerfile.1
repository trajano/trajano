FROM centos:7
RUN curl --silent http://cdn.postfix.johnriley.me/mirrors/postfix-release/official/postfix-3.3.0.tar.gz | tar zxf - 
WORKDIR postfix-3.3.0
RUN useradd postfix && \
    groupadd postdrop && \
    yum install -y make gcc libdb libdb-devel nc rsyslog && \
    make && \
    make upgrade
WORKDIR /
COPY main.cf.relay /tmp
RUN yum autoremove -q -y make gcc libdb-devel && \
    rm -rf postfix-3.3.0 && \
    cat /tmp/main.cf.relay >> /etc/postfix/main.cf && \
    rm /tmp/main.cf.relay
    # && \
    #sed -i~ s#/var/log/maillog#/proc/1/fd/1# /etc/rsyslog.conf && \
    #rm /etc/rsyslog.conf~
#COPY rsyslog.conf /etc/syslog.conf
COPY run.sh /
CMD [ "/run.sh" ]
#CMD [ "/usr/sbin/postfix", "start-fg"]
HEALTHCHECK --start-period=5s CMD nc localhost 25 --send-only < /dev/null || exit 1
