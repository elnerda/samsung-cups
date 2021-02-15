#!/bin/bash
set -x
apt update && apt upgrade && apt install cups printer-driver-splix
systemctl restart cups.service
set +x
