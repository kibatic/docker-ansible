FROM python:3-slim-bullseye

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qq -y vim sshpass && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install pywinrm ansible~=7.3.0 paramiko
