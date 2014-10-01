# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. See: vagrantup.com.

  # Build against Ubuntu Trusty 64, without any config management utilities.
  config.vm.box = "trusty64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  # Enable host-only access to the machine using a specific IP.
  config.vm.network :private_network, ip: "10.0.2.15"
  config.vm.boot_timeout = 600

  # Shared folders.
  # You can only use NFS (second option below) once nfs-utils is installed.
  # config.vm.synced_folder "/path/to/local/folder", "/path/to/remote"
  # config.vm.synced_folder "/path/to/local/folder", "/path/to/remote",
  #   :nfs => !RUBY_PLATFORM.downcase.include?("w32"),
  #   id: "share"

  # Provider-specific configuration for VirtualBox.
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--name", "lamp"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--cpus", 2]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end


  # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
  config.vm.define :lamp do |lamp|
    lamp.vm.hostname = "lamp"
  end

  # Install ansible at remote host.
  config.vm.provision "shell", path: "provisioning/init.sh", keep_color: true
  # Copy ansible playbook to guest machine
  config.vm.provision "file", source: "provisioning/guest/inventory", destination: "/home/vagrant/inventory"
  config.vm.provision "file", source: "provisioning/guest/playbook.yml", destination: "/home/vagrant/playbook.yml"
  # Run it!!!
  config.vm.provision "shell",
    path: "provisioning/ansible.sh",
    keep_color: true

end