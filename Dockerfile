# Use official PHP image with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Copy your code to Apache's web root
COPY public/ /var/www/html/

# Set working directory (optional, for future changes)
WORKDIR /var/www/html

# Expose port 80 for HTTP (Render auto-maps to its internal port)
EXPOSE 80
