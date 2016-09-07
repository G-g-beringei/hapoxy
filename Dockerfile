FROM ubuntu
MAINTAINER xingxing

RUN apt-get -y install git wget haproxy
RUN rm /etc/haproxy/haproxy.cfg
ADD https://github.com/G-g-beringei/hapoxy/haproxy.cfg /etc/haproxy/
CMD haproxy -f /etc/haproxy/haproxy.cfg
EXPOSE 10012 -p 10002:10002
