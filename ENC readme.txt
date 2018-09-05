# make the below entries in puppet.conf
# place myencscript.sh in /etc/puppet

node_terminus = exec
external_nodes = /etc/puppet/myencscript.sh
