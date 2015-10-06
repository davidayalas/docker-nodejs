FROM  ubuntu:14.04

MAINTAINER David Ayala <davixyz@gmail.com> @davidayalas

RUN sudo apt-get update && apt-get install -y \
			software-properties-common \
			curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -

RUN sudo apt-get update && sudo apt-get install -y nodejs

RUN npm install pm2@latest -g