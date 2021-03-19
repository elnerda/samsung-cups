#!/bin/bash
set -x
apt update && apt upgrade && apt install cups printer-driver-splix
sudo usermod -aG lpadmin $USER 
systemctl restart cups.service
sudo cupsctl --remote-admin
sudo cupsctl --share-printers
set +x
