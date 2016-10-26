source 'https://rubygems.org'
 
gem 'beaker'
gem 'beaker-rspec'
gem 'beaker-puppet_install_helper'
gem 'puppetlabs_spec_helper'
gem 'facter'
gem 'pry'
if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end