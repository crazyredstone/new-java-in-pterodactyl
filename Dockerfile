FROM debian:buster-slim
FROM adoptopenjdk:16-jre-hotspot
LABEL key="Redys Profix"
RUN apt-get -y install curl ca-certificates openssl git tar bash sqlite3 fontconfig \
    && adduser --disabled-password --home /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
COPY .entrypoint.sh /entrypoint.sh
CMD ["/bin/bash","/entrypoint.sh"]
