# The official OpenJDK 17 image as the base image
FROM openjdk:17

# Environment variables for the Spring Boot application
# ENV SPRING_PROFILES_ACTIVE=production
ENV SPRING_APPLICATION_JSON={}

# Directory for the Spring Boot application
WORKDIR /cms-app

# Copy the compiled Spring Boot JAR file into the container
COPY target/cms-1.0.0.jar /cms-app/

# Exposing the port that Spring Boot application will run on
EXPOSE 8083

# Command to run your Spring Boot application
CMD ["java", "-jar", "cms-1.0.0.jar"]