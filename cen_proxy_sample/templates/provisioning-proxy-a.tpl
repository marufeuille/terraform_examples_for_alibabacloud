yum update -y
yum install -y squid
useradd ecs-user
echo '${password}' | passwd --stdin ecs-user
mkdir -p /home/ecs-user/.ssh
echo ${publickey} > /home/ecs-user/.ssh/authorized_keys
chown -R ecs-user:ecs-user /home/ecs-user
chmod 700 /home/ecs-user/.ssh
chmod 400 /home/ecs-user/.ssh/authorized_keys
echo "ecs-user  ALL=(ALL)       ALL" > /etc/sudoers

mv /tmp/squid.conf /etc/squid/squid.conf
systemctl restart squid
systemctl enable squid

timedatectl set-timezone Asia/Tokyo
