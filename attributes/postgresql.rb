default[:postgresql][:password][:postgres] = ''
default[:postgresql][:pg_hba] = [
  {
    type: 'local',
    db: 'all',
    user: 'postgres',
    method: 'trust'
  }
]
default[:postgresql][:config][:shared_preload_libraries] = 'pg_stat_statements'
default[:postgresql][:contrib][:extensions] = ['pg_stat_statements']
