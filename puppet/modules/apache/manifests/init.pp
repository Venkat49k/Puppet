class apache {
  package { 'httpd':
     ensure => present,
        }
  file {'/var/www/html/index.html':
     source => 'puppet:///modules/apache/index1.html',
     notify => Service['httpd'],
        }
  service { 'httpd':
     ensure => running,
     require => Package['httpd'],
           }
           
      }  
       
