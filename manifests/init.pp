# Class: beaker_101
# ===========================
#
# Installs example beaker files.
#
# Examples
# --------
#
# @example
#    class { 'beaker_101': }
#
# Authors
# -------
#
# John Duarte <john.duarte@puppetlabs.com>
#
# Copyright
# ---------
#
# Copyright 2015 Puppet Labs, unless otherwise noted.
#
class beaker_101 {

  file { '/tmp/beaker_101':
    ensure => 'directory',
  }

  file { '/tmp/beaker_101/vmpooler.cfg':
    ensure  => present,
    source  => 'puppet:///modules/beaker_101/vmpooler.cfg',
    require => File['/tmp/beaker_101'],
  }
  file { '/tmp/beaker_101/install_foss.rb':
    ensure  => present,
    source  => 'puppet:///modules/beaker_101/install_foss.rb',
    require => File['/tmp/beaker_101'],
  }
  file { '/tmp/beaker_101/install_pe.rb':
    ensure  => present,
    source  => 'puppet:///modules/beaker_101/install_pe.rb',
    require => File['/tmp/beaker_101'],
  }
  file { '/tmp/beaker_101/hello_test.rb':
    ensure  => present,
    source  => 'puppet:///modules/beaker_101/hello_test.rb',
    require => File['/tmp/beaker_101'],
  }
}
