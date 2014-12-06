FROM ubuntu:14.04

MAINTAINER Cristian Paul <paul@kristianpaul.org>

RUN apt-get -y install make gcc zip wget libc6-dev

RUN wget https://github.com/kristianpaul/ossec-hids/archive/preloaded-server.zip

RUN unzip preloaded-server.zip

RUN cd ossec-hids-preloaded-server/ && bash ./install.sh 

RUN apt-get purge -y --auto-remove gcc make zip libc6-dev

CMD ["/etc/init.d/ossec start"]

EXPOSE 1514

EXPOSE 514
