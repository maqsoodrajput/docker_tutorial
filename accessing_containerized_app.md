- entry point command is a command that is exicuted automatically

- nginx: is popular webserver and we run it inside a container by doing 'docker run nginx'. 

- But when we run 'docker run nginx' it will be useless for us and the server will simply running the entry point command and does not let us do anything inside this container.

- at this point just exit the container by doing 'CTRL+C'

- To make this container useful, let's do the following

~$ docker run -it -d -p 8080:80 nginx

- '-p' option is for port and '80' is the default port inside the container. In '8080:80' we are mapping the default port '8080' outside the container to the port '80' inside the container. 

- Let's check if the container is running by typing 'docker ps'

- To use the running nginx container we need ip

- On MacOs do 'ifconfig' to check your IP address.

- On linux systems do 'ip addr show' or simply 'ip a'.

- Let's open up a browser and then type the IP of the host (running the docker) with colon ':' and then '8080'
  eg: '172.16.250.15:8080'. Press enter and you'll see a web engine running inside a container. 
  You can also do 'localhost:8080' as well. 
  
- Let's explore now a little bit. 

- To stop this container:
  
~$ docker stop <hash_of_container_ID>

- To run a container we doesn't stop we get out of the terminal:

~$ docker run -it -d --restart unless-stopped -p 8080:80 nginx
