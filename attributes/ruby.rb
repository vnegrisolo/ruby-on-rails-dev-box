default[:ruby_build][:upgrade] = true

default[:ruby_version] = '2.3.0'
default[:rbenv][:user_installs] = [{
  user: 'vagrant',
  group: 'vagrant',
  rubies: [default[:ruby_version]],
  global: default[:ruby_version]
}]
