FROM openjdk:8-jre-alpine
RUN apk add --no-cache wget unzip \
 && wget -q https://repo.e-hentai.org/hath/HentaiAtHome_1.4.2.zip -O /tmp/HentaiAtHome.zip \
 && unzip /tmp/HentaiAtHome.zip HentaiAtHome.jar \
 && mkdir -p /var/lib/hath/cache \
 && mkdir -p /usr/lib/hath \
 && mkdir -p /var/lib/hath/download \
 && mkdir -p /usr/lib/hath \
 && mkdir -p /var/log/hath \
 && mkdir -p /tmp/hath \
 && apk del wget unzip \
 && rm -rf /var/cache/apk/* \
 && ln -s /run/secrets/hath_client_login /usr/lib/hath/client_login
VOLUME /var/lib/hath

CMD ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "HentaiAtHome.jar", \
  "--port=12555", \
  "--cache-dir=/var/lib/hath/cache", \
  "--data-dir=/usr/lib/hath", \
  "--download-dir=/var/lib/hath/download", \
  "--log-dir=/var/log/hath", \
  "--temp-dir=/tmp/hath" ]
EXPOSE 12555

