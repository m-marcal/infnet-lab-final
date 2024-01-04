#!/bin/bash

# Update system packages
apt update -y
apt upgrade -y


# Install Apache Web Server (httpd)
apt install apache2 -y

echo '<h1>Hello World from ${project_name}</h1>' > /var/www/html/index.html