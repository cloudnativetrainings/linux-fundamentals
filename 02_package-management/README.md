# Package Management

In this lab you will learn how to make use of a package manager to add and remove the installed packages on a Linux machine.

## Install Packages from the official Ubuntu Repositories
```bash

# try to run Midnight Commander => `mc` (this command will fail because `mc` is not installed yet)
mc

# install mc (this command will fail due to we have to update the package metainfo first)
apt install mc

# update the package metainfo (ignore the output concerning upgradable packages, we will cover this later)
apt update

# install `mc`
apt install mc

# make use of `mc`
mc

# list all installed packages
apt list --installed

# lets filter for the lines with the word mc in it (we will cover pipes and grep later in detail)
apt list --installed | grep mc

# print out the location of the executable `mc`
which mc

# remove the package `mc` again
apt remove mc

# now the tool `which` will deliver an empty output due to we uninstalled `mc`
which mc

# upgrade all installed packages 
# if you get a dialog with the header `Daemons using outdated libraries` click TAB and ENTER
apt upgrade

# you can chain commands like this
apt update && apt upgrade -y
```

## Install Packages from other Repositories

Some packages are not contained in the official Ubuntu repositories. To install them you have to add the repository and its GPG key. We will try this via installing Docker.

```bash
# add some additional packages (note you can spawn commands over several lines via the character `\`)
apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add the official docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# verify that the repository got added
ls -alh /etc/apt/sources.list.d/

# update apt package metadata with new packages from the recently added repository
apt update

# install docker
apt install docker-ce

# verify the docker installation (you should get infos about the versions of docker)
docker --version   
```
