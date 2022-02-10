FROM debian:11-slim

RUN echo 'deb http://deb.debian.org/debian bullseye-backports main' > /etc/apt/sources.list.d/backports.list

RUN apt update && \
    apt -y install -t bullseye-backports fastd iproute2 net-tools inetutils-ping curl iptables

ADD fastd-server.conf /etc/fastd-server.conf
ADD fastd-client.conf /etc/fastd-client.conf
