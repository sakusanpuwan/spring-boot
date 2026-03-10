# 1. Build .JAR
# Names the stage as "build"
FROM maven:3.9.13-sapmachine-21 AS build
WORKDIR /home/app
COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package


# 2. RUN
# Set openjdk as base image
FROM eclipse-temurin:21-jdk

VOLUME /tmp

# Exposes the port the docker container should listen on at runtime
EXPOSE 8080

# Copies JAR file from 1st step
COPY --from=build /home/app/target/*.jar app.jar

# Configures commands that can be run at container launch
ENTRYPOINT ["java", "-jar", "/app.jar"]