#
# Cookbook Name:: ruby-on-rails-dev-box
# Recipe:: default
#
# Copyright (C) 2015 Vinicius Negrisolo
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'htop'
include_recipe 'git'
include_recipe 'oh_my_zsh'
include_recipe 'ruby_build'
include_recipe 'rbenv::vagrant'
include_recipe 'rbenv::user'

# %w().each do |package_name|
#   package package_name do
#     action :install
#   end
# end

%w(vfn).each do |folder|
  directory "#{node[:projects_folder]}/#{folder}" do
    mode '0755'
    action :create
  end
end

%w(guide-algorithms ruby-on-rails-dev-box workstation).each do |git_project|
  git "#{node[:projects_folder]}/vfn/#{git_project}" do
    user node[:user]
    group node[:group]
    repository "#{node[:github][:account]}/#{git_project}.git"
    revision 'master'
    action :sync
  end
end
