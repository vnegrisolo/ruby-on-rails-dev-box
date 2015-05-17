email = node[:github][:email]
id_rsa = "#{node[:home]}/.ssh/id_rsa"

bash 'ssh key gen' do
  user node[:user]
  group node[:group]
  not_if { ::File.exist?(id_rsa) }
  code <<-EOH
    ssh-keygen -t rsa -C '#{email}' -N '' -f '#{id_rsa}'
    eval "$(ssh-agent -s)"
    ssh-add #{id_rsa}
  EOH
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
