FROM amazonlinux:latest
RUN yum install httpd -y
WORKDIR /opt
copy index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

