require 'beaker-rspec'
require 'beaker/puppet_install_helper'
 
hosts.each do |host|
  on host, install_puppet
end
 
RSpec.configure do |c|
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
 
  c.formatter = :documentation
 
  c.before :suite do
    hosts.each do |host|
      copy_module_to(host, :source => proj_root, :module_name => 'atop')
      on (host, puppet('module install stahnma-epel')),
        {:acceptable_exit_codes => [0]}
    end
  end
end
