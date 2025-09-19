# Use lightweight OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file from Gradle output
COPY build/libs/*.jar app.jar

# Expose default port (optional, if your app uses a port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
