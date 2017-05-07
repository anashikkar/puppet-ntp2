require 'spec_helper'
describe 'ntp2' do
  context 'with default values for all parameters' do
    it { should contain_class('ntp2') }
  end
end
