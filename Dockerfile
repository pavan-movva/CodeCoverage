FROM openjdk:8


# Set the working directory inside the container
WORKDIR /usr/share/jenkins

# Copy all files from the current directory to the working directory in the container
COPY . .

# Expose port 80 for the NGINX web server
EXPOSE 8080
