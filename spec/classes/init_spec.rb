require 'spec_helper'
describe 'beaker_101' do

  context 'with defaults for all parameters' do
    it { should contain_class('beaker_101') }
  end
end
