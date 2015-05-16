default[:oh_my_zsh][:users] = [{
  login: default[:user],
  theme: 'robbyrussell',
  plugins: [],
  home: default[:home]
}]
default[:oh_my_zsh][:repository] = 'https://github.com/robbyrussell/oh-my-zsh.git'
