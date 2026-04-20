FROM httpd:latest

COPY app/ /var/www/html/

HEALTHCHECK CMD curl --fail http://localhost || exit 1
