#### Docker for Ubunutu

- always upadate the system before installing any package via 'sudo apt update'.
- restart the terminal seccion or reboot is recomended after update in order to make sure that everything is updated.
- open the terminal and type 'sudo apt install docker.io'
- check installtion via systemctl. Type 'sudo systemctl status docker'.
- if 'disabled' and 'inactive', type 'sudo systemctl enable docker'. 
- check the status again. Type 'sudo systemclt status docker' and this time it should show 'enabled'. From now on the docker will be enabled whenever the machine is running.
- to fix the 'inactive' type 'sudo systemctl start docker'.
- check the status again by typing 'sudo sytemctl status docker'. This time there will also be some login information avaiable.
- to test run type 'sudo docker run hello-world'. If there is no error get printed on the terminal it means the docker is correct.
- to avoid typing sudo all the time, add the current user in the docker group. To do that, type 'sudo usermod -aG docker <username>'.
- Now log out and log back in from the current user or better reboot. 

#### Docker for Windows

- Go to www.docker.com
- under 'Getting started'
- download the installation file. Go to the the downloaded file and select the default options and install.
- at the end of the installation process a window pops up and asks us to restart. Restart your system.
- double click on the desktop icon for docker and it will ask us to install the WSL Linux kernel. 
- download the kernel and install the kernel and follow the options of the pop up windows. at the end hit finish.
- open up cmd from the start menu.
- type 'docker' and hit enter. If no error messsage gets printed on your screen then it's installed on your machine.

#### Docker for Mac OS

- First check processor (intel/M1)
- Download and follow the simple instrustion. 
- open the terminal and type 'docker' and press enter. If no error shows up, it means installation is successful.