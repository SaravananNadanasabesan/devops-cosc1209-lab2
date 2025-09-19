# Use lightweight OpenJDK base image
FROM openjdk:8-jre-alpine

# Set working directory
WORKDIR /usr/app

# Copy JAR file built by Gradle
COPY build/libs/*.jar app.jar

# Expose app port (if needed)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
