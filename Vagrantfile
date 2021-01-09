Vagrant.configure("2") do |config|
  config.vm.box = "galaxy3/ghomrassen"
  config.vm.box_version = '2021.01.08-1225'
#  config.vm.box_url = "file://home/korben/Downloads/BOX12.box"

  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'

  config.vbguest.auto_update = false
  config.ssh.insert_key = false
  config.ssh.connect_timeout = 20
  config.vm.boot_timeout = 120

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provision "file", source: "www/index.html", destination: "index.html"
  config.vm.provision "file", source: "www/cgi-bin/hello.cgi", destination: "hello.cgi"
  config.vm.provision "file", source: "www/shellshock_setup.sh", destination: "shellshock_setup.sh"

  config.vm.network "private_network", ip: "10.55.56.56",
    auto_config: false,
  	virtualbox__intnet: "metasploitable3"

#  config.vm.provision "shell", inline: <<-SHELL
#  ifconfig eth14 10.55.56.56 netmask 255.255.255.0 up
#SHELL
#  config.vm.provider "virtualbox" do |vb|
#  ifconfig eth14 10.55.56.56 netmask 255.255.255.0 up

#  end
end