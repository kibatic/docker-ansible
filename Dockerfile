FROM ubuntu:15.10

MAINTAINER Philippe Le Van <philippe.levan [at] kibatic.com>

RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get -qq update && \
    apt-get install -y --no-install-recommends ansible && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ansible.cfg /ansible.cfg
