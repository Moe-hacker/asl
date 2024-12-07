PASSWORD=""
PORT=""
rm -rf /etc/resolv.conf && touch /etc/resolv.conf
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 114.114.114.114" >> /etc/resolv.conf
groupadd -g 1003 aid_graphics
groupadd -g 3003 aid_inet
groupadd -g 3004 aid_net_raw
usermod -aG video,audio,storage,aid_graphics,aid_inet,aid_net_raw root
usermod -g aid_inet _apt 2>/dev/null
usermod -a -G aid_inet,aid_net_raw portage 2>/dev/null
echo "root:${PASSWORD}" | chpasswd
apk update
apk add openrc openssh
mkdir -p /run/openrc
touch /run/openrc/softlevel
openrc
rc-service devfs start
rc-service dmesg start
rc-update add sshd
rc-update add resolvconf default
sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
grep -q "^#*PasswordAuthentication" /etc/ssh/sshd_config || echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
sed -i "s/^#Port 22/Port ${PORT}/" /etc/ssh/sshd_config
