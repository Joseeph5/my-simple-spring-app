# Use a base image with OpenJDK 20 installed
FROM openjdk:20-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file from the host into the container
COPY target/simpe-spring-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on (e.g., 8082)
EXPOSE 8082

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
