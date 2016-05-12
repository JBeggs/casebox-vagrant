#!/usr/bin/env bash
echo -e "\n[*] Fix name server.\n"
echo "nameserver 8.8.8.8" > /etc/resolv.conf
apt-get update --fix-missing;
echo -e "\n[*] Install python-pip, python-dev, git, curl, wget, nano.\n"
apt-get install -y python-pip python-dev git curl wget nano;
echo -e "\n[*] Install markupsafe.\n"
pip install markupsafe;
echo -e "\n[*] Install ansible.\n"
pip install ansible;
echo -e "\n[*] Autoremove unused software .\n"
apt-get autoremove -y;
echo -e "\n[x] Done.\n"