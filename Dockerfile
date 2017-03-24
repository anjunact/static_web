FROM ubuntu
MAINTAINER Anjun 'anjunact@qq.com'
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'hi,i am  a your container' > /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
