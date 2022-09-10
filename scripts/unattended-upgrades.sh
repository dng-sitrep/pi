#!/bin/bash

sudo apt-get update 

sudo apt-get install unattended-upgrades

sudo dpkg-reconfigure --priority=low unattended-upgrades

sudo unattended-upgrade -d -v --dry-run