#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "Path to clone required"
    exit 1
fi


sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

git clone https://github.com/joshgermon/dev-env $1
cd $1 && ./configure.sh
