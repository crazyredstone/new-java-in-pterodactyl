FROM adoptopenjdk:16-jre-hotspot
LABEL key="Redys Profix"
RUN apt-get --no-cache install curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
COPY .entrypoint.sh /entrypoint.sh
CMD ["/bin/bash","/entrypoint.sh"]
