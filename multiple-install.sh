#!/bin/sh

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
sudo dnf install -y ansible-core java-1.8.0-openjdk.x86_64 python3-pip
ansible-galaxy collection install kubernetes.core:4.0.0

pip install kubernetes

#fix permission issues in new TZ environment
sudo chmod 755 /usr/local/bin/helm
chmod 755 ./roles/sb2bi_prebuiltdb_db2/files/b2bi6202.tar.gz

ansible-playbook playbooks/deploy_sb2b_prebuiltdb.yml & \
#ansible-playbook playbooks/deploy_itx_rs.yml & \
ansible-playbook playbooks/deploy_cd.yml & \
#ansible-playbook playbooks/deploy_cdws.yml & \
ansible-playbook playbooks/deploy_ssp.yml & \
ansible-playbook playbooks/tools/kafka.yml & \
ansible-playbook playbooks/tools/minio.yml &
