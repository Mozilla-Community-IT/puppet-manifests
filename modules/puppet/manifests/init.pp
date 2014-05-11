# Installs the latest Puppet from the apt repo
class puppet {
  include apt
  apt::source { 'puppetlabs':
    location   => 'https://apt.puppetlabs.com',
    repos      => 'main dependencies',
    key        => '4BD6EC30',
    key_server => 'pgp.mit.edu',
  }

  package { 'puppet-common':
    ensure  => latest,
    require => Apt::Source[puppetlabs]
  }
}
