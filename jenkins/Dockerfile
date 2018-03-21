FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
 && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
 && add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable"
#    $(lsb_release -cs) \
#   stable"
RUN apt-get update && apt-get install -y docker-ce
COPY ca.pem cert.pem key.pem /etc/docker/
RUN chown jenkins:jenkins /etc/docker \
 && chmod -R u=rwX /etc/docker
#RUN adduser jenkins users
# RUN usermod -aG docker jenkins
# drop back to the regular jenkins user - good practice
USER jenkins
RUN /usr/local/bin/install-plugins.sh \
  docker-slaves \
  github-branch-source
ENV JENKINS_OPTS=--prefix=/jenkins \
    DOCKER_HOST=tcp://192.168.1.113:2376 \
    DOCKER_TLS_VERIFY=1 \
    DOCKER_CERT_PATH=/etc/docker
#    DOCKER_HOST=unix:///var/run/docker.sock \
