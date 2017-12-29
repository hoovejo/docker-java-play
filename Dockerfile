FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ADD src/main/scripts/entrypoint.sh entrypoint.sh
ADD src/main/static hub/static
RUN apk add --no-cache bash
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["./entrypoint.sh", "testparm"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
