#FROM maven:3.8.3-openjdk-11-slim AS build
#COPY src /tmp/app/src
#COPY pom.xml /tmp/app/pom.xml
#RUN mvn -f /tmp/app/pom.xml clean package -DskipTests

FROM openjdk:11-jre-slim
COPY target/*.jar /usr/local/lib/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/local/lib/app.jar"]