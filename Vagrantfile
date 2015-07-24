# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
SYNCED_FOLDER = 'projects'
Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'boxcutter/ubuntu1504'

  config.vm.network :private_network, ip: '192.168.33.10'

  [80, 443, 3000, 5432, 6379, 9200].each do |port|
    config.vm.network :forwarded_port, guest: port, host: port
  end

  host_folder = "~/#{SYNCED_FOLDER}"
  vm_folder = "/home/vagrant/#{SYNCED_FOLDER}"
  config.vm.synced_folder host_folder, vm_folder, nfs: true

  config.vm.provider 'virtualbox' do |p|
    p.memory = 3072
    p.cpus = 4
  end

  if Vagrant.has_plugin?('vagrant-omnibus')
    config.omnibus.chef_version = 'latest'
  end

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.verbose_logging = true
    chef.run_list = ['recipe[ruby-on-rails-dev-box::default]']
  end
end
