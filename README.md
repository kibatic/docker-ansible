docker-ansible : using ansible without installing it
----------------------------------------------------

```bash
alias base_ansible='docker run -it --rm --volume $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent -v ${HOME}:${HOME}:ro -v ${HOME}/.ssh:/ssh:ro -w ${PWD} docker-ansible'
alias ansible='base_ansible ansible'
alias ansible-playbook='base_ansible ansible-playbook'
alias ansible-vault='base_ansible ansible-vault'
```
