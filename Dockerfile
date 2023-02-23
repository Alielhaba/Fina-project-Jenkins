FROM alpine

RUN mkdir data
# Update Ubuntu Software repository
RUN apt update
RUN apt upgrade -y

# Install nginx, php-fpm and supervisord from ubuntu repository
RUN  apt update
RUN  apt install nginx

# Copy start.sh script and define default command for the container
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./Demo.jpg ~/data

# Expose Port for the Application 
EXPOSE 80

