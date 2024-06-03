#!/bin/bash

# Set the environment variable
export MY_USER=steven

# Update package list and install Ansible
sudo apt update
sudo apt install -y ansible

# Create a temporary directory for the playbook files
TMP_DIR=$(mktemp -d)
cd $TMP_DIR

# Fetch the main.yml playbook
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/main.yml

# Fetch the setup_vim.yml, setup_zsh.yml, and setup_neovim.yml tasks
mkdir -p tasks
cd tasks
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/tasks/setup_vim.yml
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/tasks/setup_zsh.yml
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/tasks/setup_neovim.yml
cd ..

# Run the Ansible playbook with the environment variable
ansible-playbook main.yml --connection=local -e my_user=$MY_USER

# Cleanup
cd ~
rm -rf $TMP_DIR

