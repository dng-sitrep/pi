#!/bin/bash
 git pull && sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y && docker image prune -a