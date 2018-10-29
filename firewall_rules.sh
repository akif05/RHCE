
firewall-cmd --set-default-zone=internal
firewall-cmd --list-services
firewall-cmd --reload
firewall-cmd --get-active-zone
firewall-cmd --zone=internal --permanent --add-service=ssh
firewall-cmd --reload
