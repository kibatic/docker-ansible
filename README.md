docker-ansible : using ansible without installing it
======================================================

This docker allows you to use ansible on your computer without installing it.

This allows you to :

* share your ssh agent with the ansible docker

Just add these aliases to your ~/.bash_aliases in order to use ansible as it where installed on your computer.

```bash
export DOCKER_ANSIBLE_VERSION=2.0
base_ansible() {
	docker run -it --rm --volume $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent -v ${PWD}:${PWD} -v ${HOME}/.ssh/known_hosts:/root/.ssh/known_hosts -w ${PWD} kitpages/docker-ansible:${DOCKER_ANSIBLE_VERSION} $@
}
alias ansible='base_ansible ansible'
alias ansible-playbook='base_ansible ansible-playbook'
alias ansible-vault='base_ansible ansible-vault'
alias ansible-galaxy='base_ansible ansible-galaxy'
```

## Usage

Simply use your aliases, and you can override ansible default version when required

```bash
$ ansible --version 
ansible 2.0.2.0
  config file = /tmp/ansible.cfg
  configured module search path = Default w/o overrides

$ DOCKER_ANSIBLE_VERSION=2.3 ansible --version 
ansible 2.3.1.0
  config file = /tmp/ansible.cfg
  configured module search path = Default w/o overrides
  python version = 2.7.13 (default, Jun  8 2017, 21:01:38) [GCC 4.9.2]
```


