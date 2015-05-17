include_recipe 'build-essential'
include_recipe 'timezone-ii'
include_recipe 'locale'
include_recipe 'apt'
include_recipe 'htop'
include_recipe 'git'
include_recipe 'oh_my_zsh'
include_recipe 'ruby-on-rails-dev-box::ruby'
include_recipe 'ruby-on-rails-dev-box::redis'
include_recipe 'nginx'
include_recipe 'ruby-on-rails-dev-box::elasticsearch'
include_recipe 'ruby-on-rails-dev-box::github'

# %w().each do |package_name|
#   package package_name do
#     action :install
#   end
# end
include_recipe 'ruby-on-rails-dev-box::postgresql'
