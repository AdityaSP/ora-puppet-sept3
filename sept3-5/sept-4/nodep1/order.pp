file {'/tmp/a.txt': content => '1', }
service {'apache2': ensure=>running}

File['/tmp/a.txt'] ~> Service['apache2']

#file {'/tmp/a.txt': content => '1', }~>
#service {'apache2': ensure=>running}

#   content => '1'
#}

#service {'apache2': 
#    ensure=>running,
#    subscribe => File['/tmp/a.txt']
#}
#file {'/tmp/a.txt':
#   content => '1',
#   notify => Service['apache2']
#}

#service {'apache2': ensure=>running}

#notify{'Message 1':}
#notify{'Message 2':
#       before => Notify['Message 4']
#}
#notify{'Message 3':
#      require => Notify['Message 4']
#}
#notify{'Message 4':
#}

#notify{'Message 1':}
#notify{'Message 2':}->
#notify{'Message 3':}->
#notify{'Message 4':}

#notify{'Message 1':}
#notify{'Message 2':}-> 
#notify{'Message 3':}
#notify{'Message 4':}->
#notify{'Message 5':}

#notify{'Message 2':} 
#notify{'Message 1':}
#notify{'Message 4':}
#notify{'Message 3':}
#notify{'Message 5':}

#Notify['Message 2']->Notify['Message 4']->Notify['Message 3']
#Notify['Message 2']->Notify['Message 1']->Notify['Message 5']


