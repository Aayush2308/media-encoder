FROM alpine:latest

# Install busybox-extras for httpd daemon on Alpine
RUN apk add --no-cache busybox-extras

# Web root content
RUN mkdir -p /var/www && echo "Transcoder Engine Ready" > /var/www/index.html

EXPOSE 80

# Prints "Transcoder Engine Ready" and serves HTTP on port 80 detached
CMD ["sh", "-c", "echo 'Transcoder Engine Ready' && httpd -f -p 80 -h /var/www"]
