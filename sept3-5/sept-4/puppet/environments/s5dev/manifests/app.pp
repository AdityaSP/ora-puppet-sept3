node /nodep[1-9]/{
  notify{'In s5dev':}
  if $::boxrole == 'webserver' {
  	class {'apache2': apache_port => 9999}
  	exec { 'apt-get update':
    		path=>['/usr/bin/'] }

  	Exec['apt-get update']->
  	Package['apache2'] -> File['/etc/apache2/ports.conf'] -> Service['apache2']
  	File['/etc/apache2/ports.conf'] ~> Service['apache2']
  }
  if $::boxrole == 'db' {
	class { '::mysql::server': }
  }
}
