FROM ubuntu:16.04

MAINTAINER Rodney Gomes <rodneygomes@gmail.com>

RUN apt-get update

# base dependencies
RUN apt-get install -y pulseaudio supervisor x11vnc xvfb fluxbox

# chrome dependencies
RUN apt-get install -y gconf-service libatk1.0-0 libcairo2 libcups2 \
                       libgconf-2-4 libgdk-pixbuf2.0-0 libgtk2.0-0 libnspr4 \
                       libnss3 libpango1.0-0 fonts-liberation libappindicator1 \
                       xdg-utils wget
