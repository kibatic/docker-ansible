docker-ansible : using ansible without installing it
======================================================

This docker allows you to use ansible on your computer without installing it.

This allows you to :

* share your ssh agent with the ansible docker

Just add these aliases to your ~/.bash_aliases in order to use ansible as it where installed on your computer.

```bash
alias base_ansible='docker run -it --rm --volume $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent -v ${PWD}:${PWD}     -v ${HOME}/.ssh/known_hosts:/root/.ssh/known_hosts -w ${PWD} kitpages/docker-ansible'
alias ansible='base_ansible ansible'
alias ansible-playbook='base_ansible ansible-playbook'
alias ansible-vault='base_ansible ansible-vault'
```


