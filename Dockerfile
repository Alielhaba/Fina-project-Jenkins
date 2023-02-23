FROM alpine

RUN mkdir data
# Update Ubuntu Software repository
RUN apk update
RUN apk upgrade -y

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN  apk add nginx

# Copy start.sh script and define default command for the container
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./Demo.jpg ~/data

# Expose Port for the Application 
EXPOSE 80

