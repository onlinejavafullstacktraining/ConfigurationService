FROM openjdk:20-slim as build
ARG JAR_FILE
COPY target/${JAR_FILE} configserver.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "/configserver.jar"]

