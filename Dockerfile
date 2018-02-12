FROM hypriot/rpi-node:latest

MAINTAINER Shingo Hisakawa shingohisakawa@gmail.com

RUN apt-get update
RUN apt-get install vim emacs
RUN npm install forever -g

ADD blink.js /
ADD start.sh /

ENTRYPOINT /start.sh
