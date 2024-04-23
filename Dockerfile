# Use the official OpenJDK 8 image as the base image
FROM openjdk:8

# Expose port 8080 to the outside world
EXPOSE 8080

# Set the working directory inside the container to '/webapp'
WORKDIR /webapp

# Copy the Java source code file 'Palindrome.java' into the container's '/webapp' directory
COPY Palindrome.java /webapp/

# Compile the Java source code file 'Palindrome.java' to generate the corresponding class file
RUN javac Palindrome.java

# Specify the command to run your Java application (assuming 'Main' is your entry point class)
CMD ["java", "Main"]
