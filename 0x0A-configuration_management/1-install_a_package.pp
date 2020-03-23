# Using Puppet, install puppet-lint

exec {'install puppet-lint':
  command => 'gem install puppet-lint -v 2.1.1',
}
