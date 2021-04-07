# Development Setup

Collection of playbooks and roles used to setup a Linux (Ubuntu/Xubuntu/Kubuntu) development environment.

## How to use

- Go to the [configuration file](group_vars/all.yml) and fill in the required variables. 
- Inside the [configuration file](group_vars/all.yml) you will find all the available tools that you can install. 
  By default, all of them are set to `true`, if you don't want to install one of them, just change it to `false`.
- Run the following script:

```bash
$ ./setup.sh
```

The setup script will:

- Install [Ansible](https://github.com/ansible/ansible)
- Download the required [roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html) from the [Ansible Galaxy](https://galaxy.ansible.com/)
- Run all the selected [playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html).

## Testing

**Important:** Requires Docker 

`./test.sh`
