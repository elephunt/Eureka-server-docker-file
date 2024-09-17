# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built jar from the target folder into the image
COPY target/*.jar eureka-server.jar

# Run the application
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]