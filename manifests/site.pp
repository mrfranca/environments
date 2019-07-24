node 'lppsp1001.uckg.us' {
  include confsbase
}
node 'balancer.uckg.us' {
  include confsbase
  include balancer
  balancer::configure  { 'balancer.uckg.us': 
  web1  => '192.168.0.34',
  web2  => '192.168.0.35',
  cache => '192.168.0.36',
}
}
node 'webserver01.uckg.us' {
  include confsbase
  include webserver
  webserver::configure  { 'webserver01.uckg.us': 
  banco => '192.168.0.36',
  cache => '192.168.0.36',
}
}
node 'webserver02.uckg.us' {
  include confsbase
  include webserver
  webserver::configure  { 'webserver02.uckg.us': 
  banco => '192.168.0.36',
  cache => '192.168.0.36',
}
}
node 'database.uckg.us' {
  include confsbase
  include memcached
  include mysqlserver
}
