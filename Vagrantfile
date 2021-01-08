Vagrant.configure("2") do |config|
  config.vm.box = "michaelh/heartbleed"
  config.vm.box_version = "0.0.1"

  config.vm.network "private_network", ip: "10.55.55.9",
  	virtualbox__intnet: "g3main"
end