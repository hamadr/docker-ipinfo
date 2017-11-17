FROM alpine:latest
RUN apk --update --no-cache add curl apache2 && \
    rm -rf /var/cache/apk/*
RUN mkdir -p /run/apache2
CMD curl ipinfo.io > /var/www/localhost/htdocs/index.html && /usr/sbin/httpd -D FOREGROUND 

