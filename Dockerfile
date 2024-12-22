FROM centos:latest
MAINTAINER bhargavnikumbh99@gmail.com

RUN yum install -y httpd zip unzip && \
    wget -O /var/www/html/photogenic.zip https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip && \
    cd /var/www/html && \
    unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22