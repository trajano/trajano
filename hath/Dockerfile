#FROM openjdk:jre
#RUN apt-get update && apt-get install curl unzip \

FROM openjdk:jre-alpine
RUN apk add --no-cache curl unzip \
 && curl https://repo.e-hentai.org/hath/HentaiAtHome_1.4.2.zip > /tmp/HentaiAtHome.zip \
 && unzip /tmp/HentaiAtHome.zip HentaiAtHome.jar \
 && mkdir -p /var/lib/hath/cache \
 && mkdir -p /usr/lib/hath \
 && mkdir -p /var/lib/hath/download \
 && mkdir -p /var/log/hath \
 && mkdir -p /tmp/hath \
 && apk del curl unzip \
 && rm -rf /var/cache/apk/* \
VOLUME /var/lib/hath
COPY client_login /usr/lib/hath/
#ENV CLIENT_ID
#ENV CLIENT_KEY
#  "--disable_logging" , \
#  "--rpc-server-ip=rpc.hentaiathome.net;172.25.0.1", \

CMD ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "HentaiAtHome.jar", \
  "--port=12555", \
  "--cache-dir=/var/lib/hath/cache", \
  "--data-dir=/usr/lib/hath", \
  "--download-dir=/var/lib/hath/download", \
  "--log-dir=/var/log/hath", \
  "--temp-dir=/tmp/hath" ]
EXPOSE 12555

