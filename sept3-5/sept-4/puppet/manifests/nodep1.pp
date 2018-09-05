node /nodep[1-9]/{
  if $::boxrole == 'webserver' {
  	class {'apache2': apache_port => 9090 }
  	exec { 'apt-get update':
    		path=>['/usr/bin/'] }

  	Exec['apt-get update']->
  	Package['apache2'] -> File['/etc/apache2/ports.conf'] -> Service['apache2']
  	File['/etc/apache2/ports.conf'] ~> Service['apache2']
  }
  if $::boxrole == 'db' {
	$override_options = {
  		'mysqld' => {
    		'bind-address' => '0.0.0.0',
  		}
	}
	class { '::mysql::server':
 		 root_password           => 'example',
  		remove_default_accounts => true,
  		override_options        => $override_options
	}
  }
}
