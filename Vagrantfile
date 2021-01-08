Vagrant.configure("2") do |config|
  config.vm.box = "michaelh/heartbleed"
  config.vm.box_version = "0.0.1"

  config.vbguest.auto_update = false
  config.ssh.insert_key = false
  config.ssh.connect_timeout = 20
  config.vm.boot_timeout = 120

  config.vm.network "private_network", ip: "10.55.56.56",
  	virtualbox__intnet: "g3main"
end