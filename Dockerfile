FROM ubuntu:20.04

# Install dependencies
RUN apt-get update
RUN apt-get upgrade -y


COPY bgpscanner_1.0-1_20190320_amd64.deb /root
COPY libisocore1_1.0-1_20190320_amd64.deb /root 

RUN dpkg -i /root/*.deb

RUN rm /root/bgpscanner_1.0-1_20190320_amd64.deb
RUN rm /root/libisocore1_1.0-1_20190320_amd64.deb


RUN rm -rf /root/.cache