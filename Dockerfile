FROM openjdk:8-jdk-alpine
LABEL "MAINTAINER" "Joe Hoover <joe_hoover7@hotmail.com>"
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
COPY src/main/scripts/entrypoint.sh entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY src/main/static hub/static
ENTRYPOINT ["./entrypoint.sh", "testparm"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
