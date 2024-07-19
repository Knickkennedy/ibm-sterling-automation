#!/bin/sh

ansible-playbook playbooks/deploy_sb2b_prebuiltdb.yml & \
ansible-playbook playbooks/deploy_cd.yml & \
ansible-playbook playbooks/deploy_cdws.yml & \
ansible-playbook playbooks/deploy_ssp.yml & \
ansible-playbook playbooks/tools/kafka.yml & \
ansible-playbook playbooks/tools/minio.yml &