#Docker NodeJS PaaS

Base image to run NodeJS with PM2 to manage common operations and supervision over applications.

#Basic usage

		sudo docker run -it -p 8000:8000 nodepaas

With this command you get a shell to start configuring one app or multiple nodejs apps. 


#Start an application

		sudo docker run -d -p 8000:8000 --name nodepaas -v /host_apps/apps:/apps nodepaas "pm2 start /apps/app.js --watch -i 0 --no-daemon"
