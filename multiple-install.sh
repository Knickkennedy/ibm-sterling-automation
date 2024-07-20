#!/bin/sh

sudo dnf install -y python3.12 python3.12-pip java-1.8.0-openjdk.x86_64 helm
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1
sudo alternatives --set python3 /usr/bin/python3.12
ansible-galaxy collection install kubernetes.core

ansible-playbook playbooks/install_prequisites.yml
ansible-playbook playbooks/deploy_sb2b_prebuiltdb.yml & \
ansible-playbook playbooks/deploy_cd.yml & \
ansible-playbook playbooks/deploy_cdws.yml & \
ansible-playbook playbooks/deploy_ssp.yml & \
ansible-playbook playbooks/tools/kafka.yml & \
ansible-playbook playbooks/tools/minio.yml &