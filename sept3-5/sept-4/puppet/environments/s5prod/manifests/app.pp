node /nodep[1-9]/{
  if $::boxrole == 'webserver' {
        $apache_port = hiera('apache_port')

  	exec { 'apt-get update':
    		path=>['/usr/bin/'] }
  	class {'apache2': apache_port => $apache_port }
        package{'git':}->
	vcsrepo { '/tmp/mycode':
  		ensure     => latest,
  		provider   => git,
  		source     => 'https://github.com/AdityaSP/puppetcode',
	}->
        file{'/var/www/html/index.html':
              source => "/tmp/mycode/index.html"
        }

  	Exec['apt-get update']->
  	Package['apache2'] -> File['/etc/apache2/ports.conf'] -> Service['apache2']
  	File['/etc/apache2/ports.conf'] ~> Service['apache2']

        Package['apache2'] -> File['/var/www/html/index.html']
  }
  if $::boxrole == 'db' {
	class { '::mysql::server': }
  }
}
