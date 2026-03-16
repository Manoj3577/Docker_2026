# Use Ubuntu as base image
FROM ubuntu:22.04

# Update packages and install Apache
RUN apt update && apt install -y apache2

# Copy website files to Apache web directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
