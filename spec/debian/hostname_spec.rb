require 'spec_helper'

# Ensure hostname is not carried over from live-cd build
describe command('hostname') do
  it { should_not return_stdout 'debian-7-blank' }
end

# Hostname should retunr the UUID
uuid = `mdata-get sdc:uuid`
describe command('hostname') do
  it { should return_stdout uuid }
end
