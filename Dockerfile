FROM ubuntu
MAINTAINER Maqsood 24833949+maqsoodrajput@users.noreply.github.com

# Skip prompt
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# Install packages
RUN apt install -y apache2 vim-nox

# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND


