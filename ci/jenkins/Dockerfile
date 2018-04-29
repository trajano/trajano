FROM trajano/jenkins-with-docker
RUN /usr/local/bin/install-plugins.sh \
  reverse-proxy-auth-plugin
COPY ca.pem cert.pem key.pem /etc/docker/
ENV JENKINS_OPTS=--prefix=/jenkins \
    DOCKER_HOST=tcp://192.168.1.113:2376 \
    DOCKER_TLS_VERIFY=1 \
    DOCKER_CERT_PATH=/etc/docker
