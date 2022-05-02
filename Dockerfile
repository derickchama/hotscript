FROM httpd:2.4

COPY ./var/lib/jenkins/workspace/httpd_image /usr/local/apache2/htdocs/httpd_image
