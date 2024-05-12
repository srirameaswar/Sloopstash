#!/bin/bash

export OS_NAME=ubuntu-linux-18-04
export OS_ARCHITECTURE=amd64
export OS_EDITION=server
export HYPERVISOR=virtualbox

echo $OS_NAME

# Go to linux kickstart
#
cd /opt/kickstart-linux

echo "Inside the Folder, Vagrant starting"

#Kick start vagrant

VAGRANT_CWD=./vagrant/$OS_NAME/$HYPERVISOR/$OS_ARCHITECTURE/$OS_EDITION vagrant up

echo "Waiting the OS to boot"

#Put Sleep the script until the os boot


sleep 20


# set SSH

VAGRANT_CWD=./vagrant/$OS_NAME/$HYPERVISOR/$OS_ARCHITECTURE/$OS_EDITION vagrant ssh
