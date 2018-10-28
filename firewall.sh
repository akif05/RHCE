#!/bin/bash

firewall-cmd --permanent --change-interface=enp0s3 --zone=external
firewall-cmd --permanent --change-interface=enp0s8 --zone=internal
firewall-cmd --permanent --change-interface=enp0s9 --zone=internal

firewall-cmd --permanent --zone=external --add-masquerade

firewall-cmd --permanent --direct --add-rule ipv4 filter FORWARD 0 -s 192.168.2.0/25 j ACCEPT
firewall-cmd --permanent --direct --add-rule ipv4 filter FORWARD 0 -s 192.168.3.0/24 j ACCEPT

systemctl reload firewalld
