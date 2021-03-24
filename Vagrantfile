$script = <<-SCRIPT
yum install vim zip unzip telnet wget net-tools -y;
yum install https://repo.saltstack.com/py3/redhat/salt-py3-repo-latest.el7.noarch.rpm -y;
yum install salt-minion git -y;
echo "lab-$(hostname)" > /etc/salt/minion_id;
echo "192.168.0.150 salt" >> /etc/hosts;
systemctl restart salt-minion;
SCRIPT

Vagrant.configure("2") do |config|
  #config.vm.box = "ubuntu/trusty64"
  config.vm.box = "centos/7"
  config.vm.hostname = "_hostname_"
  config.vm.network "public_network", ip: "_ip_", hostname: true, bridge: "enp1s0"
  config.vm.provision "shell", inline: $script
  config.vm.provider "virtualbox" do |v|
    v.memory = 700
    v.cpus = 1
  end
end
