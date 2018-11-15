### Description

A packer project that creates a ```vagrant box``` with ```redis``` installed

### Installed softwares needed prior to using the project

- Packer software installation : [link for packer](https://www.packer.io/intro/getting-started/install.html)
- VirtualBox software installation : [link for VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Vagrant software installation : [link for Vagrant](https://www.vagrantup.com/docs/installation/)

### The repo is having following files

- File ```http/preseed.cfg``` - a file for Ubuntu to self-install
- File ```script/provision.sh``` :  a script that installs ```redis```
- File ```template.json``` : a JSON file that configure the various components of Packer in order to create required machine images

