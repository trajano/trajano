FROM oraclelinux
COPY main.cf.relay /
COPY sasl_password /etc/postfix/
RUN curl --silent http://cdn.postfix.johnriley.me/mirrors/postfix-release/official/postfix-3.3.0.tar.gz | tar zxf - 
WORKDIR postfix-3.3.0
RUN useradd postfix && \
    groupadd postdrop && \
    yum install -y make gcc libdb libdb-devel && \
    make && \
    make upgrade
WORKDIR /
RUN cat /main.cf.relay >> /etc/postfix/main.cf && \
    yum autoremove -y make gcc libdb-devel && \
    chown root:root /etc/postfix/sasl_password && \
    chmod 600 /etc/postfix/sasl_password && \
    rm -rf /main.cf.relay postfix-3.3.0
CMD [ "/usr/sbin/postfix", "start-fg" ]
