#!/bin/bash

# Run the second Ansible playbook
ansible-playbook ./Hostnames/set_config.yaml

# Check if the second command was successful
if [ $? -eq 0 ]; then
    echo "set_config.yaml executed successfully."
else
    echo "Error executing set_config.yaml."
    exit 1
fi

echo "Playbooks executed."
