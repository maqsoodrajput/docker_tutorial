# this is introduction to docker essentials

### What a docker is?
- This a platform that runs containers.
- A container bundles an application's code and all the dependencies into one object.
- Containers typlically use less resources than virtual machines.
- Docker containers can run almost everywhere.

### Why use it?
- Containers can be easily copied and deployed (no need to worry about hypervisors and other stuff).
- Applications that run in container are segregated from the rest of the host system.
- Containers are cheaper to run than VMs.
- More containers can be run on a hardware as comapred to VMs
- Docker containers can be run on platforms such as AWS, Linode, Google Cloud and etc.

### What are the Downsides?
- Not all apps are supported when run in containers (path issue in a source code).
- Performance can be sometimes be inconsistent. 
- One might get better performance on Linux host because the container is directly working on top of the Linux kernel.


- Now go to the file installing_docker.md to install docker on your machine.