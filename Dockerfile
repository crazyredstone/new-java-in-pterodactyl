FROM alpine
LABEL key="Redys Profix"
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container
USER container
ENV USER=container HOME=/home/container
FROM adoptopenjdk:latest
WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.s
CMD ["/bin/bash","/entrypoint.sh"]
