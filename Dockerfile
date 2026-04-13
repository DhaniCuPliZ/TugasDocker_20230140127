FROM ubuntu:latest
ARG JAR-FILE=target/*.jar
COPY ./target/deploy-0.0.1-SNAPSHOT.jar app.jar
LABEL authors="ramad"
ENTRYPOINT ["java", "-jar", "/app.jar"]
EXPOSE 8080