#!/bin/sh

ansible-playbook playbooks/deploy_sb2b.yml & \
ansible-playbook playbooks/deploy_cd.yml & \
ansible-playbook playbooks/deploy_ssp.yml