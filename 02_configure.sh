#!/bin/bash

# Create folders
mkdir ~/projects

# Add SSH keys to keychain
ssh-add -K ~/.ssh/id_rsa
