FROM ubuntu:14.04

MAINTAINER Cristian Paul <paul@kristianpaul.org>

RUN apt-get -y install make gcc zip wget

RUN wget https://github.com/kristianpaul/ossec-hids/archive/preloaded-server.zip

RUN unzip preloaded-server.zip

RUN cd ossec-hids-preloaded-server/

RUN ./install.sh 

RUN service ossec start

EXPOSE 1514

EXPOSE 514
