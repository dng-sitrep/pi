#!/bin/bash
sudo apt install unbound -y
wget https://www.internic.net/domain/named.root -qO- | sudo tee /var/lib/unbound/root.hints
sudo rsync -ahP pi-hole.conf /etc/unbound/unbound.conf.d/
sudo service unbound restart
dig pi-hole.net @127.0.0.1 -p 5335