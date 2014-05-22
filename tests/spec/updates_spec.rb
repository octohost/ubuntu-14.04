require 'spec_helper'

describe command('apt-get upgrade') do
  its(:stdout) { should match /0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded./ }
end
