#!/bin/bash

# Execute core playbook
ansible-playbook ./playbooks/core.yml -K

# List of remaining playbooks
playbooks=("docker.yml" "go.yml" "node.yml" "rust.yml" "wezterm.yml")

# Function to prompt user for playbook execution
prompt_playbook_execution() {
    local playbook=$1
    read -p "Do you want to execute $playbook? (Y/N): " choice
    case "$choice" in
      y|Y ) ansible-playbook ./playbooks/${playbook};;
      n|N ) echo "Skipping $playbook.";;
      * ) echo "Invalid choice. Skipping $playbook.";;
    esac
}

# Iterate through remaining playbooks and prompt for execution
for playbook in "${playbooks[@]}"; do
    prompt_playbook_execution $playbook
done
