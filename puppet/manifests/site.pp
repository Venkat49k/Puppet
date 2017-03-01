## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# PRIMARY FILEBUCKET
# This configures puppet agent and puppet inspect to back up file contents when
# they run. The Puppet Enterprise console needs this to display file contents
# and differences.

# Define filebucket 'main':
filebucket { 'main':
  server => 'server1.abc.com',
  path   => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
#include motd
#include apache
#include ssh
#include logrotate::base
#include vsftd
}

node 'server3.abc.com' {
#      include ssh
      include vsftpd
#      inclde vsftpd  
#  user { 'VKATest1':
#  ensure           => 'present',
#  comment          => 'test',
#  gid              => '500',
#  home             => '/home/VKATest1',
#  password         => '$6$abV.JamGEctBKVho$X3JwUCbyoORuMMxKD/FfrC4qbajqx8l4ZFTlzsLbYumCGsR8CU36.d3W6OC6meKe2Ig5xBqV28bkS0ElSFUYg.',
#  password_max_age => '99999',
#  password_min_age => '0',
#  shell            => '/bin/bash',
#  uid              => '1501',
#  managehome       => 'true',
#}
      
                       }        

