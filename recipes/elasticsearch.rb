execute 'dpkg configure' do
  user 'root'
  command 'dpkg --configure -a'
end

include_recipe 'elasticsearch-ng'
