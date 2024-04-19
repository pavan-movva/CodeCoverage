# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files from the current directory to the working directory in the container
COPY . .

# Expose port 80 for the NGINX web server
EXPOSE 80
