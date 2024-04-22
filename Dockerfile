# Use the official OpenJDK image as the base image
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the JAR file from the current directory to the working directory in the container
COPY target/javademo.jar .

# Expose the port that your Java application listens on
EXPOSE 8080

# Define the command to run your Java application
CMD ["java", "-jar", "javademo.jar"]
