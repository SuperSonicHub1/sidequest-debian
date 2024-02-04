FROM node:12-bullseye

LABEL maintainer "Kyle Williams <kyle.anthony.williams2@gmail.com>"

### STARTUP ###

# No Debian, I don't want to configure my timezone.
ARG DEBIAN_FRONTEND=noninteractive

# Standard apt update        
RUN apt-get update

# Install distro dependencies
RUN apt-get install -y git libudev-dev python3

# Download repository
RUN git clone https://github.com/SideQuestVR/SideQuest.git

WORKDIR /SideQuest/

# Checkout latest version
RUN git checkout v0.10.39

# Install SideQuest dependencies
RUN yarn install

# Modify package to build Debian package
COPY modify-package ./
RUN chmod +x modify-package
RUN ./modify-package

# Build Debian package
RUN yarn dist build --linux

ENTRYPOINT ["/bin/bash", "-i"]
