FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled JAR file from the local machine into the container
COPY target/*.jar  /app/NotherSecurity-1.0.0.jar

# Set the command to run the application
ENTRYPOINT ["java", "-jar", "/app/NotherSecurity-1.0.0.jar"]
EXPOSE 8084
