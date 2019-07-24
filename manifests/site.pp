node 'homolog.uckg.us' {
  include confsbase
  include memcached
  include mysqlserver
  include webserver
  webserver::configure { 'homolog.uckg.us':
  banco => '192.168.0.31',
  cache => '192.168.0.31',
  }
}
