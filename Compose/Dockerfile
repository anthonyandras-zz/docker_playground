# Simple web server
FROM centos:latest
LABEL maintainer="anthony.andras@gmail.com"

RUN yum install -y httpd
RUN echo "Our container website" >> /var/www/html/index.html

EXPOSE 80

ENTRYPOINT apachectl -DFOREGROUND
