# # Use the official OpenJDK image as the base image
# FROM openjdk:17-jdk-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the Maven build output (JAR file) to the working directory
# COPY target/*.jar app.jar

# # Expose the application port
# EXPOSE 9090

# # Define the entry point to run the Spring Boot application
# ENTRYPOINT ["java", "-jar", "app.jar"]
# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Create the Docker image
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]