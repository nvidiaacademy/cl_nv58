#!/bin/bash

# Run the second Ansible playbook
ansible-playbook ./Practice4/set_config_mlag.yaml

# Check if the second command was successful
if [ $? -eq 0 ]; then
    echo "set_config_mlag.yaml executed successfully."
else
    echo "Error executing set_config.yaml."
    exit 1
fi

echo "Playbook executed."