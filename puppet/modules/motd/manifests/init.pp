class motd {
   file {'/etc/motd':
     owner   => 'root',
     source  =>'puppet:///modules/motd/motd'
       }
}
