default[:platform] = 'ubuntu'
default[:platform_family] = 'debian'

default[:tz] = 'America/Sao_Paulo'
default[:locale][:lang] = 'en_US.utf8'
default[:locale][:lc_all] = 'en_US.utf8'

default[:user] = 'vagrant'
default[:group] = 'vagrant'

default[:home] = "/home/#{default[:user]}"
default[:projects_folder] = "#{default[:home]}/projects"
