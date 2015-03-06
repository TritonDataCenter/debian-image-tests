require 'spec_helper'

# Ensure the hostid value is unique.
describe command('hostid') do
  its(:stdout) { should_not eq "00000000" }
end

