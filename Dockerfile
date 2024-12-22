# Use a lightweight Apache image
FROM httpd:2.4

# Maintainer information
LABEL maintainer="bhargavnikumbh99@gmail.com"

# Copy the HTML file to the Apache document root
COPY index.html /var/www/html/

# Expose port 80 to serve the website
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]
