default[:platform] = 'ubuntu'
default[:platform_family] = 'debian'

default[:locale] = { lang: 'en_US.utf8', lc_all: 'en_US.utf8' }

default[:user] = 'vagrant'
default[:group] = 'vagrant'

default[:home] = "/home/#{default[:user]}"
default[:projects_folder] = "#{default[:home]}/projects"
