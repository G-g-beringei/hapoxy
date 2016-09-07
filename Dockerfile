FROM ubuntu
MAINTAINER xingxing
RUN RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list 
RUN apt-get update
RUN apt-get -y install git wget haproxy
RUN rm /etc/haproxy/haproxy.cfg
ADD http://jp.basami.cn/haproxy.cfg /etc/haproxy/
CMD haproxy -f /etc/haproxy/haproxy.cfg
EXPOSE 10012 -p 10002:10002