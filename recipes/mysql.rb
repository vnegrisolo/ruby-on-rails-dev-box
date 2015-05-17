mysql_service 'default' do
  port '3306'
  version '5.6'
  initial_root_password ''
  bind_address '*'
  action [:create, :start]
end
