class apache2($apache_port = $port) inherits apache2::params {

  package{'apache2':}

  #file {'/etc/apache2/ports.conf':	
  #  source => 'puppet:///modules/apache2/ports.conf'
  #}
  file {'/etc/apache2/ports.conf':
     content => template('apache2/ports.conf.erb')
  }
  include apache2::start
}


