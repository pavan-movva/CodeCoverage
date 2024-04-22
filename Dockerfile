# Use a base image that includes the necessary tools for running your application
FROM openjdk:8

# Create a directory named 'webapp' inside the working directory
RUN mkdir /webapp

# Set the working directory inside the container
WORKDIR /webapp

# Copy your Java application source code into the container
COPY . /webapp/

# Compile your Java application
RUN javac Palindrome.java

# Expose the port that your application listens on
EXPOSE 5050

# Specify the command to run your Java application
CMD ["java", "Main"]

