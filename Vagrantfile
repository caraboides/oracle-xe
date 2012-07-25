# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :oracle do |web_config|
    web_config.vm.box = "lucid64"
    web_config.vm.customize { |vm| vm.memory_size = 768 }
    web_config.vm.network :hostonly, "192.168.15.21"
    web_config.vm.share_folder "chef", "/etc/chef", "~/.chef"
    web_config.vm.share_folder "home", "/etc/home", "~"
    web_config.vm.forward_port 1521, 1521
    web_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "oracle"
    end
  end
end
