
  Vagrant.configure("2") do |config|
  config.vm.hostname = "ubuntu-server"
  config.vm.box = "ubuntu"
 config.omnibus.chef_version = :latest
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.boot_timeout = 120

  config.vm.provision :chef_client do |chef|
	chef.chef_server_url = "https://api.opscode.com/organizations/pokus"
    chef.validation_key_path = "./.chef/pokus-validator.pem"
    chef.validation_client_name = "pokus-validator"
	chef.node_name = "vagrant"
    chef.run_list = [
        "role[appserver]",
		"role[frontserver]",
    ]
  end
end
