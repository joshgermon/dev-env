#!/usr/bin/env bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
git clone https://github.com/joshgermon/dev-env $1
$1/configure.sh