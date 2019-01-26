#!/bin/bash
set -e
#provision.sh
sudo yum install git -y
sudo yum update -y
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py

sudo pip install ansible


sudo git clone https://github.com/rohith17992/Packer.git

sudo cd Packer/ && ansible-playbook test.yml
