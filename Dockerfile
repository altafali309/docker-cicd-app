FROM nginx:latest

COPY app/ /usr/share/nginx/html

HEALTHCHECK CMD curl --fail http://localhost || exit 1
