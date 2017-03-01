class ssh {
         $pkg1 = 'lynx'
         package { 'openssh' :
                    ensure => present,
                 }
         file { '/etc/ssh/sshd_config':
                    source => 'puppet:///modules/ssh/sshd_config',
                    notify => Service['sshd']
              }
         service { 'sshd' :
                   ensure => running,
                   require => Package ['openssh'],
                 } 
         notify { "This is the Variable defined in site ${operatingsystem}" :}
         notify { "This is in the timezone of ${timezone}" :}
                         
         }  
