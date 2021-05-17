FROM adoptopenjdk:16-jre-hotspot
RUN mkdir /opt/app
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} /opt/app/server.jar
ENTRYPOINT ["java", "-jar", "/opt/app/server.jar"]
