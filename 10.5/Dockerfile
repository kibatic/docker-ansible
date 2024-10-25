FROM python:3-slim-bookworm

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qq -y vim sshpass openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD sshconfig /root/.ssh/config

RUN pip install pywinrm ansible~=10.5.0 paramiko
