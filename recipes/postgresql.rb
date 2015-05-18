%w(postgresql-contrib).each do |package_name|
  package package_name do
    action :install
  end
end

include_recipe 'postgresql::server'
