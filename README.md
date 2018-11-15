### Description

A packer project that creates a ```vagrant box``` with ```redis``` installed

### Installed softwares needed prior to using the project

- Packer software installation : [link for packer](https://www.packer.io/intro/getting-started/install.html)
- VirtualBox software installation : [link for VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Vagrant software installation : [link for Vagrant](https://www.vagrantup.com/docs/installation/)

### The repo is having following files

- File ```http/preseed.cfg``` - a file for Ubuntu to self-install
- File ```script/provision.sh``` :  a script that installs ```redis application``` from package ```redis-server```
- File ```template.json``` : a JSON file that configure the various components of Packer in order to create required machine images

### How to use the repo

#### Note : Below steps have been applied on UbuntuOS, so in order to test it, please follow :

- Clone this repo to your local machines : `git clone git@github.com:galindonkov/packer-redis64.git`

- Change to the currently added directory : `cd packer-redis64/`

- Validate the configuration json file by ```packer validate template.json```
  Config file is validated successfully after you get a message : ```Template validated successfully```

- You are ready to build the virtual machine image by : ```packer build template.json```

- The build process is successful once you get a ```redis64-vbox.box``` placed into your current directory

- Once you have that vbox image the Vagrant program is stepping in to create Vagrant environment by creating an initial Vagrantfile by : ```vagrant init redis64-vbox.box```

- Created Vagrantfile will be placed into your current directory and right after you can create and configure guest machines according to the Vagrantfile by : ```vagrant up```

- The next step is to ssh into the running Vagrant machine and and get access to its shell by : ```vagrant ssh```
- You should see the command prompt ```vagrant@redis64:~$``` and then to test whether the ```redis-server``` is installed and running by : ```/etc/init.d/redis-server status```. The status that proves its running state is : ```Active: active (running)```

- It is good approach to power off or even to destroy the VM if it is not needed further by : ```vagrant halt``` to switch it off and ```vagrant destroy``` to remove it.

### TO DO

- Kitchen test
