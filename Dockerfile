FROM adoptopenjdk:hotspot
LABEL key="Redys Profix"
RUN apt-get update -y && apt-get install -y --no-install-recommends curl ca-certificates openssl tar sqlite \
    && rm -rf /var/lib/apt/lists/* \ 
    && adduser --disabled-password --home /home/container container 
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash","/entrypoint.sh"]
