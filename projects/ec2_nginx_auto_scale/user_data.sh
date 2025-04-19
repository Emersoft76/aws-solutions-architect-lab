#!/bin/bash
apt update -y
apt install nginx -y
echo "<h1>Servidor escalável OK</h1>" > /var/www/html/index.html
