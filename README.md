# Ansible Setups

This repository contains Ansible playbooks for setting up various tools and environments on a fresh system.

## Running the Installation Script

To run the installation script and set up Vim, Zsh, Neovim, and npm, use the following command:

\```
curl -O https://raw.githubusercontent.com/stevenmcsorley/ansiblesetups/master/install.sh && chmod +x install.sh && ./install.sh
\```

## Running Standalone Playbooks

You can also run the standalone playbooks for setting up individual tools. Here are the instructions for each:

### Setup Vim

To run the playbook for setting up Vim:

\```
ansible-playbook setup_vim_playbook.yml --connection=local --ask-become-pass
\```

### Setup Zsh

To run the playbook for setting up Zsh:

\```
ansible-playbook setup_zsh_playbook.yml --connection=local --ask-become-pass
\```

### Setup Neovim

To run the playbook for setting up Neovim:

\```
ansible-playbook setup_neovim_playbook.yml --connection=local --ask-become-pass
\```

### Setup npm

To run the playbook for setting up npm:

\```
ansible-playbook setup_npm_playbook.yml --connection=local --ask-become-pass
\```

### Setup GNU Stow

To run the playbook for setting up GNU Stow:

\```
ansible-playbook setup_stow_playbook.yml --connection=local --ask-become-pass
\```

## Directory Structure

Ensure your directory structure looks like this:

\```
.
├── Dockerfile
├── install.sh
├── main.yml
├── setup_vim_playbook.yml
├── setup_zsh_playbook.yml
├── setup_neovim_playbook.yml
├── setup_npm_playbook.yml
├── setup_stow_playbook.yml
└── tasks
    ├── setup_vim.yml
    ├── setup_zsh.yml
    ├── setup_neovim.yml
    ├── setup_npm.yml
    └── setup_stow.yml
\```

## Notes

- Ensure `fzf` is installed on your system for interactive directory selection.
- The playbooks require `sudo` access, hence the `--ask-become-pass` flag.
- Make sure to have Ansible installed on your system. If not, you can install it using:

  \```
  sudo apt update
  sudo apt install -y ansible
  \```
