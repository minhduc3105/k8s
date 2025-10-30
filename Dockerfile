# Sử dụng base image có Java 17
FROM openjdk:17-jdk-slim

# Đặt thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file .jar từ thư mục target của bạn vào container
# Giả sử file .jar của bạn nằm trong /target
COPY --from=build /app/target/*.jar app.jar
# Cổng mà ứng dụng Spring Boot của bạn chạy (mặc định là 8080)
EXPOSE 8080

# Lệnh để chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]