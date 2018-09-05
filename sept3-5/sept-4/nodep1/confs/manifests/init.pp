class confs($userinput = $port) inherits confs::params{
 include some
 $inclass = 20
 notify{"puppetversion is $puppetversion":}
 notify{"inclass is $inclass":}
 $puppetversion = 300.599
 notify{"new puppetversion is $::puppetversion":}
 notify{"fromsomeclass is $some::fromsomeclass":}
 notify{"port is $port":}
 notify{"user has passed $userinput":}
 file {'/tmp/myproperties.conf':
         content => template('confs/myproperties.erb')
 }

}

class some{
   $fromsomeclass = 40
}
