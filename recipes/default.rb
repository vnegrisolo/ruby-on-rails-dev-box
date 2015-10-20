include_recipe 'build-essential'
include_recipe 'locale'
include_recipe 'apt'
include_recipe 'htop'

include_recipe 'git'
include_recipe 'oh_my_zsh'
include_recipe 'ruby-on-rails-dev-box::vim_neobundle'

include_recipe 'ruby-on-rails-dev-box::ruby'
include_recipe 'ruby-on-rails-dev-box::nodejs'

include_recipe 'ruby-on-rails-dev-box::redis'
include_recipe 'ruby-on-rails-dev-box::elasticsearch'

include_recipe 'ruby-on-rails-dev-box::postgresql'
# include_recipe 'ruby-on-rails-dev-box::mysql'

# include_recipe 'nginx'

include_recipe 'ruby-on-rails-dev-box::github'
