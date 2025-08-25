FROM ubuntu/apache2
RUN apt update
ADD . /var/www/html/
EXPOSE 80
