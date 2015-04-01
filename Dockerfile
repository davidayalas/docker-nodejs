FROM  ubuntu:14.04

MAINTAINER David Ayala <davixyz@gmail.com> @davidayalas

RUN sudo apt-get update && apt-get install -y \
			software-properties-common \
			curl

RUN sudo add-apt-repository ppa:chris-lea/node.js
RUN sudo apt-get update && sudo apt-get install -y nodejs

RUN sudo npm cache clean -f
RUN sudo npm install -g n
RUN sudo n stable

RUN npm install pm2@latest -g