default[:postgresql][:version] = '9.4'

default[:postgresql][:password][:postgres] = ''
default[:postgresql][:pg_hba] = [
  { type: 'local', db: 'all', user: 'postgres', method: 'trust' }
]
default[:postgresql][:config][:shared_preload_libraries] = 'pg_stat_statements'
default[:postgresql][:contrib][:extensions] = %w(pg_stat_statements)

####################
# force version 9.4
####################
default[:postgresql][:enable_pgdg_apt] = true

# fake recipe to install version not accepted yet
default[:postgresql][:pgdg][:release_apt_codename] = 'squeeze'

default[:postgresql][:dir] =
  "/etc/postgresql/#{default[:postgresql][:version]}/main"
default[:postgresql][:client][:packages] = [
  "postgresql-client-#{default[:postgresql][:version]}",
  'libpq-dev'
]
default[:postgresql][:server][:packages] = [
  "postgresql-#{default[:postgresql][:version]}"
]
default[:postgresql][:contrib][:packages] = [
  "postgresql-contrib-#{default[:postgresql][:version]}"
]

default[:postgresql][:config][:data_directory] =
  "/var/lib/postgresql/#{default[:postgresql][:version]}/main"
default[:postgresql][:config][:hba_file] =
  "/etc/postgresql/#{default[:postgresql][:version]}/main/pg_hba.conf"
default[:postgresql][:config][:ident_file] =
  "/etc/postgresql/#{default[:postgresql][:version]}/main/pg_ident.conf"
default[:postgresql][:config][:external_pid_file] =
  "/var/run/postgresql/#{default[:postgresql][:version]}-main.pid"
