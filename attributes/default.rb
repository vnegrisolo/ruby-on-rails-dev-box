default[:user] = 'vagrant'
default[:group] = 'vagrant'
default[:home] = "/home/#{default[:user]}"
default[:projects_folder] = "#{default[:home]}/projects"
default[:github][:account] = 'https://github.com/vnegrisolo'

default[:oh_my_zsh][:users] = [{
  login: default[:user],
  theme: 'robbyrussell',
  plugins: [],
  home: default[:home]
}]
default[:oh_my_zsh][:repository] = 'https://github.com/robbyrussell/oh-my-zsh.git'
