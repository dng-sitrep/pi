#!/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "It is $date you are logged in as $user and your are in the directory $whereami"

sleep 5

echo "$user this will update then upgrade then install a firewall and set the rules it will start soon"

sleep 5

echo "updateing and upgradeing now"
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y

echo "installing Uncomplicated Firewall AKA ufw and setting up rules"

sudo apt install ufw
sudo ufw logging on

# Allowed ports
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 53
sudo ufw allow 67
sudo ufw allow 1010
sudo ufw allow 4443
sudo ufw allow 3000
sudo ufw allow 51820
sudo ufw allow 5001
sudo ufw allow 8282
sudo ufw allow 8888
sudo ufw allow 9000
sudo ufw allow 8902
sudo ufw allow 8080
sudo ufw allow 4444
sudo ufw allow 8443
sudo ufw allow 8480
sudo ufw allow 9001
sudo ufw allow 9030
sudo ufw allow 3306
sudo ufw allow 87
sudo ufw allow 20
sudo ufw allow 5432
sudo ufw allow 25
sudo ufw allow 51821
sudo ufw allow 8209
sudo ufw allow 9100
sudo ufw allow 8765
sudo ufw allow 8889
sudo ufw allow 3012
sudo ufw allow 8010
sudo ufw allow 9443
sudo ufw allow 5182
sudo ufw allow 9017
sudo ufw allow 8118
sudo ufw allow 3389
sudo ufw allow 5900
sudo ufw allow 6080
sudo ufw allow 3456
sudo ufw allow 4567
sudo ufw allow 8000
sudo ufw allow 442
sudo ufw allow 5053/tcp
sudo ufw allow 5053/udp
sudo ufw allow 5335/tcp
sudo ufw allow 5335/udp
sudo ufw allow 3050
sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp
Sudo ufw allow 5010
sudo ufw allow 5901:5903/tcp
sudo ufw allow 5901:5903/udp
sudo ufw allow 21115
sudo ufw allow 21116
sudo ufw allow 21117
sudo ufw allow 21118
sudo ufw allow 21119
sudo ufw allow 22
sudo ufw allow 30465
sudo ufw allow 8999
sudo ufw allow 7575
sudo ufw allow 9117
sudo ufw allow 5005
sudo ufw alllow 7878
sudo ufw allow 8989
sudo ufw allow 7202
sudo ufw allow 7203
sudo ufw allow 4040
sudo ufw allow 8580
sudo ufw allow 5443

# limited ports
sudo ufw limit 4200

# ssh
sudo ufw limit 2244

# denided ports

# allowed IP's
sudo ufw allow from 192.168.1.0/24 to any
sudo ufw allow from 169.254.41.0/24 to any
sudo ufw allow from 172.17.0.0/24 to any
sudo ufw allow from 172.18.0.0/24 to any
sudo ufw allow from 10.142.148.0/24 to any

# rejected IP's
sudo ufw reject from 37.19.213.233 to any
sudo ufw reject from 158.140.180.72 to any
sudo ufw reject from 180.248.10.247 to any
sudo ufw reject from 10.228.32.1 to any

# DNS ips
sudo ufw allow from 1.1.1.1 to any
sudo ufw allow from 1.0.0.1 to any
sudo ufw allow from 8.8.8.8 to any
sudo ufw allow from 8.8.4.4 to any
sudo ufw allow from 9.9.9.9 to any
sudo ufw allow from 9.9.9.10 to any
sudo ufw allow from 149.112.112.112 to any
sudo ufw allow from 208.67.222.222 to any
sudo ufw allow from 208.67.220.220 to any
sudo ufw allow from 185.228.168.9 to any
sudo ufw allow from 158.228.169.9 to any
sudo ufw allow from 76.76.19.19 to any
sudo ufw allow from 76.223.122.150 to any
sudo ufw allow from 94.140.14.14 to any
sudo ufw allow from 94.140.15.15 to any
sudo ufw allow from 4.2.2.2 to any
sudo ufw allow from 4.2.2.3 to any
sudo ufw allow from 4.2.2.4 to any
sudo ufw allow from 4.2.2.5 to any
sudo ufw allow from 4.2.2.6 to any
sudo ufw allow from 2001:4860:4860::8888 to any
sudo ufw allow from 2001:4860:4860::8844 to any
sudo ufw allow from 2620:fe::fe to any
sudo ufw allow from 2620:fe::9 to any
sudo ufw allow from 2620:119:35::35 to any
sudo ufw allow from 2620:119:53::53 to any
sudo ufw allow from 2606:4700:4700::1111 to any
sudo ufw allow from 2606:4700:4700::1001 to any
sudo ufw allow from 2a0d:2a00:1::2 to any
sudo ufw allow from 2a0d:2a00:2::2 to any
sudo ufw allow from 2602:fcbc::ad to any
sudo ufw allow from 2602:fcbc:2::ad to any
sudo ufw allow from 2a10:50c0::ad1:ff to any
sudo ufw allow from  2a10:50c0::ad2:ff to any
sudo ufw allow from 8.26.56.26 to any
sudo ufw allow from 8.20.247.20 to any
sudo ufw allow from 205.171.3.65 to any
sudo ufw allow from 205.171.2.65 to any

# VPN adds
sudo ufw route allow in on wg0 out on eth0 from any
sudo ufw allow 192.168.1.0/24
sudo ufw allow in on wg0 to any port 53 from 10.6.0.0/24
sudo ufw allow 61155/udp

# apps
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw allow Apache Full
sudo ufw allow Nginx Full
sudo ufw allow AIM
sudo ufw allow Bonjour
sudo ufw allow CIFS
sudo ufw allow DNS
sudo ufw allow Deluge
sudo ufw allow IMAP
sudo ufw allow IMAPS
sudo ufw allow IPP
sudo ufw allow KTorrent
sudo ufw allow Kerberos Admin
sudo ufw allow Kerberos Full
sudo ufw allow Kerberos KDC
sudo ufw allow Kerberos Password
sudo ufw allow LDAP
sudo ufw allow LDAPS
sudo ufw allow LPD
sudo ufw allow MSN
sudo ufw allow MSN SSL
sudo ufw allow Mail submission
sudo ufw allow NFS
sudo ufw allow OpenSSH
sudo ufw allow POP3
sudo ufw allow POP3S
sudo ufw allow PeopleNearby
sudo ufw allow SMTP
sudo ufw allow Socks
sudo ufw allow Telnet
sudo ufw allow Transmission
sudo ufw allow Transparent Proxy
sudo ufw allow VNC
sudo ufw allow WWW
sudo ufw allow WWW Cache
sudo ufw allow WWW Full
sudo ufw allow WWW Secure
sudo ufw allow XMPP
sudo ufw allow Yahoo
sudo ufw allow qBittorrent
sudo ufw allow svnserve
sudo ufw enable
sudo ufw app list

echo "above listed is ar ethe avibale apps that might need to me alled to the allo list with the (sudo ufw allow <name of app here>)"
