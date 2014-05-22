require 'spec_helper'

describe package('ansible') do
  it { should be_installed }
end
