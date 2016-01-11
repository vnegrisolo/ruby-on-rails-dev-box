REPO = 'https://deb.nodesource.com/setup_4.x'

execute 'install nodejs' do
  user node[:user]
  group node[:group]
  command "curl -sL #{REPO} | sudo -E bash - ; sudo apt-get install -y nodejs"
end
