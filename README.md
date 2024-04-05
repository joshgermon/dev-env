# Bootstrap Development Environment
A collection of dotfiles, ansible playbooks and bash scripts to install ~85% of the important stuff for having a working development environment on Ubuntu (for now).

## Usage
The following command will attempt to install ansible and run the core playbook to configure everything. All other playbooks will be prompted for as optional.
```
mkdir dev
cd dev
curl https://raw.githubusercontent.com/joshgermon/dev-env/master/setup.sh | sh
```
