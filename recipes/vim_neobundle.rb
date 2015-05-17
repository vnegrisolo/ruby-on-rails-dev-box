%w(.vim .vim/bundle).each do |folder|
  directory "#{node[:home]}/#{folder}" do
    user node[:user]
    group node[:group]
    mode '0755'
    action :create
  end
end

git "#{node[:home]}/.vim/bundle/neobundle.vim" do
  user node[:user]
  group node[:group]
  repository 'https://github.com/Shougo/neobundle.vim'
  action :checkout
  revision 'master'
end
