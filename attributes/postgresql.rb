default[:postgresql][:password][:postgres] = ''
default[:postgresql][:pg_hba] = [
  {
    type: 'local',
    db: 'all',
    user: 'postgres',
    method: 'trust'
  }
]
