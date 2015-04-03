#Docker Node.js

Base image to run Node.js with PM2 to manage common operations and supervision over applications.

#Get image

		$ sudo docker pull davidayalas/docker-nodejs

#Basic use

		$ sudo docker run -it -p 8000:8000 davidayalas/docker-nodejs

With this command you will get a shell. From here, you can start as many applications as you want with _**pm2 start [application].js**_.

Then, you can manage your applications with PM2 (https://github.com/Unitech/PM2/blob/master/README.md).

#Start an application on container run

		$ sudo docker run -d -p 8000:8000 --name mynodejsapp -v /host_apps/apps:/apps davidayalas/docker-nodejs pm2 start /apps/app.js --watch -i 0 --no-daemon

#Sample use in docker-compose

		app:
		  build: . # Dockerfile https://github.com/davidayalas/docker-nodejs/blob/master/Dockerfile
		  volumes:
		    - /hostapps/apps:/apps
		  ports:
		    - "8000:8000"
		  command: pm2 start /apps/app.js --watch -i 0 --no-daemon
		  links:
		    - db  

		db:
		  image: tutum/mongodb

#No daemon

If you start container with an app directly (in docker command line or in docker-compose yaml file), is important to pass _**--no-daemon**_ argument to avoid exit the container.