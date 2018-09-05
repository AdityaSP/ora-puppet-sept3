file {'/tmp/db.conf':
	content => 'uname=orauser123',
	ensure => present,
        owner => vagrant,
        group => vagrant
}

package {'apache2':
      ensure => present
}
#package {'curl':
#      ensure => present
#}

service {'apache2':
     ensure => stopped
}
