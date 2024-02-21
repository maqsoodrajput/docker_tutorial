## Docker for Ubunutu

1- always upadate the system before installing any package via 'sudo apt update'.
2- restart the terminal seccion or reboot is recomended after update in order to make sure that everything is updated.
3- open the terminal and type 'sudo apt install docker.io'
4- check installtion via systemctl. Type 'sudo systemctl status docker'.
5- if 'disabled' and 'inactive', type 'sudo systemctl enable docker'. 
6- check the status again. Type 'sudo systemclt status docker' and this time it should show 'enabled'. From now on the docker will be enabled whenever the machine is running.
7- to fix the 'inactive' type 'sudo systemctl start docker'.
8- check the status again by typing 'sudo sytemctl status docker'. This time there will also be some login information avaiable.
9- to test run type 'sudo docker run hello-world'. If there is no error get printed on the terminal it means the docker is correct.
10- to avoid typing sudo all the time, add the current user in the docker group. To do that, type 'sudo usermod -aG docker <username>'.
11- Now log out and log back in from the current user or better reboot. 

## Docker for Windows

1- Go to www.docker.com
2- under 'Getting started'
3- download the installation file. Go to the the downloaded file and select the default options and install.
4- at the end of the installation process a window pops up and asks us to restart. Restart your system.
5- double click on the desktop icon for docker and it will ask us to install the WSL Linux kernel. 
6- download the kernel and install the kernel and follow the options of the pop up windows. at the end hit finish.
7- open up cmd from the start menu.
8- type 'docker' and hit enter. If no error messsage gets printed on your screen then it's installed on your machine.

## Docker for Mac OS

1- First check processor (intel/M1)
2- Download and follow the simple instrustion. 
3- open the terminal and type 'docker' and press enter. If no error shows up, it means installation is successful.