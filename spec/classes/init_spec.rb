require 'spec_helper'
describe 'atop' do
  context 'with default values for all parameters' do
    it { should contain_class('atop') }
  end
end
