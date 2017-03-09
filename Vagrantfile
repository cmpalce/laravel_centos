Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 80, host: 8000, auto_correct: true

  config.vm.synced_folder "./", "/var/www", create: true,
    group: "vagrant",
    owner: "vagrant",
    mount_options: ["dmode=777,fmode=777"]
        

  config.vm.provider "virtualbox" do |v|
    v.name = "laravel_centos"
    v.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.vm.provision :shell, :path => "provision/setup.sh"
end
