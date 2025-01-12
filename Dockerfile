# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Apache2
RUN apt update && apt install -y apache2

# Copy your project files to the Apache web directory
ADD . /var/www/html/

# Expose the port that Apache will listen to (default HTTP port is 80)
EXPOSE 80

# Start Apache in the foreground when the container runs
CMD ["apachectl", "-D", "FOREGROUND"]
