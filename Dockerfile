# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Maven build output (JAR file) to the working directory
COPY target/os-deployment-app.jar app.jar

# Expose the application port
EXPOSE 9090

# Define the entry point to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]