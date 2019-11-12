# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |v|
    v.name = "acf-php-exporter.local"
  end

  config.vm.network "private_network", type: "dhcp"
  config.vm.hostname = 'acf-php-exporter.local'

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  # From: https://github.com/devopsgroup-io/vagrant-hostmanager/issues/86#issuecomment-107052823
  config.hostmanager.ip_resolver = proc do |vm, resolving_vm|
    `vagrant ssh -c "hostname -I"`.split()[1]
  end

  config.vm.synced_folder "./", "/host-machine", owner: "vagrant", group: "www-data", :mount_options => ['dmode=777', 'fmode=777']

  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get install --assume-yes -y ansible
    ansible-playbook --connection=local --inventory 127.0.0.1, /host-machine/.hypress/ansible/hypress.yml
  SHELL
end
