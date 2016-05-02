docker-ansible : using ansible 2 without installing it
======================================================

This docker allows you to use ansible 2 on your computer without installing it.

This allows you to :

* share your ssh agent with the ansible docker
* disables known_hosts checking
* share /etc/hosts with ansible

Just add these aliases to your ~/.bash_aliases in order to use ansible as it where installed on your computer.

```bash
alias base_ansible='docker run -it --rm --volume $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent -v /etc/hosts:/etc/hosts:ro -v ${HOME}:${HOME}:ro -v ${HOME}/.ssh:/root/.ssh --env ANSIBLE_HOST_KEY_CHECKING=False -w ${PWD} kitpages/docker-ansible'
alias ansible='base_ansible ansible'
alias ansible-playbook='base_ansible ansible-playbook'
alias ansible-vault='base_ansible ansible-vault'
```


