#!/bin/sh

dnf update -y >> update_log.txt
flatpak update -y >> update_log.txt
yum update -y >> update_log.txt
