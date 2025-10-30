# Sử dụng base image có Java 17
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy file JAR từ target
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
