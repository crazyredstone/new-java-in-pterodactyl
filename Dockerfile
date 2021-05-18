FROM alpine
LABEL key="Redys Profix"
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
FROM adoptopenjdk:16-jre-hotspot
COPY .entrypoint.sh /entrypoint.sh
CMD ["/bin/bash","/entrypoint.sh"]
