FROM openjdk:17-jdk-slim
WORKDIR /app
ARG JAR_FILE=build/libs/*.jar
COPY build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
