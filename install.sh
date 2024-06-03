#!/bin/bash

# Update and install Ansible
sudo apt update
sudo apt install -y ansible

# Create a temporary directory for the playbook files
TMP_DIR=$(mktemp -d)
cd $TMP_DIR

# Fetch the setup_zsh.yml playbook
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/setup_zsh.yml

# Create the templates directory and fetch the zshrc.j2 template
mkdir templates
cd templates
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/templates/zshrc.j2
cd ..

# Run the Ansible playbook
ansible-playbook setup_zsh.yml --connection=local

# Cleanup
cd ~
rm -rf $TMP_DIR

