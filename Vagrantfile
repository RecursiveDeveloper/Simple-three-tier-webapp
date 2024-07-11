OWNER = "vagrant"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.boot_timeout = 480

  config.vm.synced_folder "./webapp", "/opt/webapp"
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
  end

  config.vm.provision "shell", 
    path: "./provisioners/install_dockerEngine.sh", args: "#{OWNER}"
  config.vm.provision "shell", 
    path: "./provisioners/install_webapp.sh", args: "/opt/webapp"
end