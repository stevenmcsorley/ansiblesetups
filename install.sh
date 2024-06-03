#!/bin/bash

# Update and install Ansible
sudo apt update
sudo apt install -y ansible

# Clone the repository containing the playbook
if [ ! -d "zsh-setup" ]; then
    git clone https://github.com/yourusername/zsh-setup.git
fi

cd zsh-setup

# Run the Ansible playbook
ansible-playbook setup_zsh.yml --connection=local

