default[:platform] = 'ubuntu'
default[:platform_family] = 'debian'

default[:tz] = 'America/Sao_Paulo'
default[:locale][:lang] = 'en_US.utf8'
default[:locale][:lc_all] = 'en_US.utf8'

default[:user] = 'vagrant'
default[:group] = 'vagrant'

default[:home] = "/home/#{default[:user]}"
default[:projects_folder] = "#{default[:home]}/projects"

default[:github][:account] = 'https://github.com/vnegrisolo'
default[:github_projects] = %w(guide-algorithms ruby-on-rails-dev-box workstation)

default[:oh_my_zsh][:users] = [{
  login: default[:user],
  theme: 'robbyrussell',
  plugins: [],
  home: default[:home]
}]
default[:oh_my_zsh][:repository] = 'https://github.com/robbyrussell/oh-my-zsh.git'

default.set[:ruby_build][:upgrade] = true

default[:ruby_version] = '2.2.2'
default[:rbenv][:user_installs] = [{
  user: default[:user],
  rubies: [default[:ruby_version]],
  global: default[:ruby_version],
  gems: {
    default[:ruby_version] => [
      { name: 'bundler' },
      { name: 'rails', version: '4.2.1' }
    ]
  }
}]

default[:redisio][:servers] = [
  { port: '6379' },
  { port: '6380', slaveof: { address: '127.0.0.1', port: '6379' } }
]
