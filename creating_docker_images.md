#### Creating a custom container image

The tutorial shows the process of creating a custom container image from scratch. The below commands were used in that process.

##### Steps to create a modified version of the Ubuntu image

The following steps outline the process of editing the Ubuntu container image, to make our own copy with our own changes.

Launch an Ubuntu container in interactive mode:
~$ docker run -it ubuntu
Inside the container, run the following commands:

Install all updated packages:

~$ apt update
~$ apt dist-upgrade

Install Apache:

~$ apt install apache2
‘Start Apache:

~$ /etc/init.d/apache2 start


##### Create an image from our current Ubuntu container

Don’t stop the container or exit the normal way, or you’ll lose your changes! Instead, hold CTRL and press P, and while still holding CTRL, then press Q. This will exit the container but it will still be running.

Find the ID of the container:

~$ docker ps

Look for the container ID of our running container in the output.

Create an image from the still-running container:

~$ docker commit <ID> lltv/apache-test:1.0

Launch a container from our new image:

~$ docker run -d -it -p 8080:80 lltv/apache-test:1.0

Alter the ENTRYPOINT of the container:

Although our new container image has all of our changes saved, it will not automatically launch Apache even though it was started within the container. We’ll need to edit the ENTRYPOINT of the container image, which is an instruction it should execute upon creation. To do that, we can run the following command:

~$ docker commit --change='ENTRYPOINT ["apachectl", "-DFOREGROUND"]' <ID> lltv/apache-test:1.1

That will save a new version of the container image, with an incremented version number. This new container image will automatically start Apache upon its creation.

##### Creating a container image from a Dockerfile

The following commands will enable to to create a container image similar to the previous one, but we’ll use a Dockerfile instead. A Dockerfile can contain all the commands we executed manually one-by-one, in one text file.

Dockerfile
Save the following code into a text file, named “Dockerfile”:

 FROM ubuntu
 MAINTAINER Maqsood 24833949+maqsoodrajput@users.noreply.github.com
 
 ####### Skip prompts # this is a comment
 ARG DEBIAN_FRONTEND=noninteractive
 
 ####### Update packages
 RUN apt update; apt dist-upgrade -y
 
 ####### Install packages
 RUN apt install -y apache2 vim-nox
 
 ####### Set entrypoint
 ENTRYPOINT apache2ctl -D FOREGROUND

Build a container image from the Dockerfile
The following command will build a new container image, with our Dockerfile. Take note of the incremented version number, and also the period at the end. It must be run from the same location that contains the Dockerfile.

~$ docker build -t lltv/apache:1.2 .

For further reading go to: https://www.learnlinux.tv/docker-essentials-7-creating-images/




































