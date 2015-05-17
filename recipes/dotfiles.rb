bash 'install dotfiles' do
  user node[:user]
  group node[:group]
  cwd "#{node[:projects_folder]}/vnegrisolo/dotfiles"
  command '#{node[:home]}/.rbenv/shims/bundle; ./bin/install.rb'
end

directory "#{node[:home]}/.vim/bundle" do
  user node[:user]
  group node[:group]
  mode '0755'
  action :create
end
git "#{node[:home]}/.vim/bundle/neobundle.vim" do
  user node[:user]
  group node[:group]
  repository 'https://github.com/Shougo/neobundle.vim'
  action :checkout
  revision 'master'
end
