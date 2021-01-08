Vagrant.configure("2") do |config|
  config.vm.box = "galaxy3/ghomrassen"
  config.vm.box_version = "2021.01.07-2232"

  config.ssh.username = 'seed'
  config.ssh.password = 'dees'

  config.vbguest.auto_update = false
  config.ssh.insert_key = false
  config.ssh.connect_timeout = 20
  config.vm.boot_timeout = 120

#  config.vm.network "private_network", ip: "10.55.56.56",
#  	virtualbox__intnet: "metasploitable3"

  config.vm.provider "virtualbox" do |vb|
#    vb.customize ['modifyvm', :id, '--nic0', 'intnet']
#    vb.customize ['modifyvm', :id, '--nictype0', 'virtio']
#    vb.customize ['modifyvm', :id, '--cableconnected0', 'on']

    vb.customize ['modifyvm', :id, '--nic1', 'intnet']
    vb.customize ['modifyvm', :id, '--nictype1', 'virtio']
    vb.customize ['modifyvm', :id, '--cableconnected1', 'on']

  end
end