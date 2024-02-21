#### to check all the docker images locally available on your machine:

~$ docker images

#### to search a docker container which we might want to download later (as an example search for an ubuntu container)

~$ docker search ubuntu

#### to download an image (again as an example ubuntu image):

~$ docker pull ubuntu

#### now to run the above downloaded container type:

~$ docker run ubuntu

- it exits without doing anything because the ubuntu image has nothing to do right now.

#### another example: 

~$ docker run nginx

#### if container has nothing to do it exits

#### to check all the running container on a system:

~$ docker ps

#### to check all the containers running on a system as well as perviously running containers: 

~$ docker ps -a

#### to force a container to keep running (again as an example ubuntu container):

~$ docker run -it ubuntu /bin/bash 

- now this ubuntu container is keep running with another prompt. Here as example install any packge, i.e vi, vim or etc. One can try to run a GUI or an audio file.


#### to exit this container type 

~$ exit

### Note:
once exited from the above ubuntu container, all the changes and packages installed inside a container will be gone. The resason is that the containers are blue prints of an image and they don't save the changes. If your chages are inside a container and it is closed then these chages will be lost and next time a new container will start from the image will not have the previous changes. "THE CONTAINER ARE NOT STATEFULL".

- Please now check out how to make containers presist or make them keep running. 