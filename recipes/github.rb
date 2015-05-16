id_rsa = "#{node[:home]}/.ssh/id_rsa"
execute 'ssh key gen' do
  user node[:user]
  group node[:group]
  command "ssh-keygen -t rsa -C '#{node[:github][:email]}' -N '' -f '#{id_rsa}'"
  not_if { ::File.exist?(id_rsa) }
end

node[:github][:projects].each do |account, projects|
  directory "#{node[:projects_folder]}/#{account}" do
    mode '0755'
    action :create
  end

  projects.each do |project|
    git "#{node[:projects_folder]}/#{account}/#{project}" do
      user node[:user]
      group node[:group]
      repository "https://github.com/#{account}/#{project}.git"
      action :checkout
      revision 'master'
    end
  end
end
