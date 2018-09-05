#include confs
n
if $::boxrole == 'webserver' {
	class {'confs':
      		userinput =>9999}
}
