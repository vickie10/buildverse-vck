#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ./id_rsa <<<y 2>&1 >/dev/null
docker build -t docker-ansible .
docker run --rm -it docker-ansible ansible-playbook -l [target] -i [inventory file] -u [remote user] playbook.yml
