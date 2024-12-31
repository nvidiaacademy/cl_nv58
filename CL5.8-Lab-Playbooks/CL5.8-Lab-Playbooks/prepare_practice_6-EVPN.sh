#!/bin/bash

# Run the first Ansible playbook
ansible-playbook ./Practice6/set_hosts.yaml

# Check if the first command was successful
if [ $? -eq 0 ]; then
    echo "set_hosts.yaml executed successfully."
else
    echo "Error executing set_hosts.yaml."
    exit 1
fi


# Run the second Ansible playbook
ansible-playbook ./Practice6/set_config.yaml

# Check if the second command was successful
if [ $? -eq 0 ]; then
    echo "set_config_mlag.yaml executed successfully."
else
    echo "Error executing set_config.yaml."
    exit 1
fi

echo "Playbook executed."