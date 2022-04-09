FROM httpd:2.4

RUN yum update -y

COPY ./public-html/ /usr/local/apache2/htdocs/
