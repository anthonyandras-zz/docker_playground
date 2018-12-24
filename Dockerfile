# This is our first real Dockerfile
ARG TAGVERSION=6 
FROM centos:${TAGVERSION}

LABEL maintainer="anthony.andras@gmail.com"
# RUN ["yum", "install", "telnet"] one approach is the json method
RUN yum update -y && yum install -y httpd net-tools && \ 
	mkdir -p /run/httpd && \
	rm -rf /run/httpd/* /tmp/httpd*

COPY index.html /var/www/html/

ENV ENVIRONMENT="prod"

VOLUME /mymount 

# doesn't map, only serves as documentation
EXPOSE 80

ENTRYPOINT ls -al / | wc -l 
