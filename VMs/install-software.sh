#!/bin/bash

# Install Ansible

#### Not necessary for the image 22.04 in deNBI
sudo apt update  && sudo apt install python3-pip && python3 -m pip install ansible-core==2.14.3

# Downloading the role from Ansible-Galaxy
~/.local/bin/ansible-galaxy role install albertodescalzo.pangenotyping

# Install the software
~/.local/bin/ansible-playbook Ansible/main.yml