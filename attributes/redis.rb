default[:redisio][:servers] = [
  { port: '6379' },
  { port: '6380', slaveof: { address: '127.0.0.1', port: '6379' } }
]
