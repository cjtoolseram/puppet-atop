source 'https://rubygems.org'
 
gem 'beaker'
gem 'beaker-rspec'
gem 'beaker-puppet_install_helper'

group :tests do
  gem 'puppetlabs_spec_helper', :require => false
end
 
gem 'facter'
if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end