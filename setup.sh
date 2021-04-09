echo "----------> Installing Ansible "
sudo apt-get update
sudo apt-get install -y software-properties-common ansible

echo "----------> Downloading Ansible roles"
mkdir roles
ansible-galaxy install -r requirements.yml -p ./roles --force

echo "----------> Playing Ansible playbooks"
ansible-playbook playbook.yml -i hosts --ask-become-pass
