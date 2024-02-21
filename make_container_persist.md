### By the end of this tutorial you will learn how to keep a docker container running.

- the main issue that the container states are NOT SAVED. 
- If the container has nothing to do it, exits itself. 
- If the changes are made inside a container then the changes are not saved and gets deleted as soon as the container is exited. To save changes permently, lookup the later tutorials in this repo.

#### To keep the containers running in the back ground or in the demon mode:

- As an example, let's run the ubuntu container again with options:

~$ docker run -it ubuntu

- 'it' option means you now have an interactive mode inside the shell.
- in case bash isn't the default shell or if one like zsh shell

~$ docker run -it ubuntu /bin/bash 

- here an interactive shell will open up attached to this container of the image file.
- to exit this (without saving changes):

~$ exit


#### To run the container in background use option '-d'

~$ docker run -it -d ubuntu

- on doing this a hashed output gets printed in the terminal output.
- on typing 'docker ps', we will see the container-ID which is the same as the hashed output.

#### To use a container running background type:

~$ docker attach <hashed_conatainer_ID>

- once we exit the attached container from the interactive mode it gets deleted.
- one can also shorten the container_ID as long as it is unique.

#### To go back to terminal without exiting:

- press CTRL + p + q 
- this will print on the terminal: "read escape sequence"
- now one can go back to the container via the same command "docker attach <container_ID>" 

##### About options:

- -it: interative tty session
- -d: demon mode in linux, i.e something which is running the background.
