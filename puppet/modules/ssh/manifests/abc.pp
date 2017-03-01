class ssh::inherit  inherits ssh {
            package { ['curl,'telnet','lynx']:
                   ensure => present,
                    }
           # $pkg1 = 'squid'
            notify { "checking vars ${pkg1}":}
  }  
