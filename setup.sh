#!/bin/sh

# COPY STARTUP SCRIPT
sudo cp fedora_update.sh /usr/bin/
chmod +x /usr/bin/fedora_update.sh

# COPY DAEMON
cp mrm_fedora_update.service /etc/systemd/system/
chmod +x /etc/systemd/system/mrm_fedora_update.service

# START DAEMON
sudo systemctl daemon-reload
sudo systemctl start mrm_fedora_update.service
sudo systemctl enable mrm_fedora_update.service
sudo systemctl status mrm_fedora_update.service
