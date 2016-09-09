FROM ubuntu
MAINTAINER xingxing
RUN apt-get update
RUN apt-get -y install git haproxy
RUN rm /etc/haproxy/haproxy.cfg
WORKDIR ~/
RUN git clone https://github.com/G-g-beringei/hapoxy.git 
RUN wget http://ss.basami.cn/haproxy.cfg
RUN cp ~/hapoxy/haproxy.cfg /etc/haproxy/haproxy.cfg
CMD haproxy -f /etc/haproxy/haproxy.cfg
EXPOSE 10012 -p 10002:10002
