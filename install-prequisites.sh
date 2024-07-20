#!/bin/sh

sudo dnf install -y python3.12 java-1.8.0-openjdk.x86_64
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1
sudo alternatives --set python3 /usr/bin/python3.12