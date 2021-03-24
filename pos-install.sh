# Install basics
yum install vim zip unzip telnet wget net-tools -y

# Install Salt
yum install https://repo.saltstack.com/py3/redhat/salt-py3-repo-latest.el7.noarch.rpm -y
yum install salt-minion -y

# Config Salt
echo "lab-$(hostname)" > /etc/salt/minion_id
echo "192.168.0.150 salt" >> /etc/hosts
systemctl restart salt-minion
