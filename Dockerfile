FROM alpine:latest

# Prepare minimal web response
RUN mkdir -p /var/www && echo "Transcoder Engine Ready" > /var/www/index.html

# Expose port 80 as required for container mapping 8087:80
EXPOSE 80

# Print "Transcoder Engine Ready" and keep running in detached mode serving on port 80
CMD ["sh", "-c", "echo 'Transcoder Engine Ready' && busybox httpd -f -p 80 -h /var/www"]
