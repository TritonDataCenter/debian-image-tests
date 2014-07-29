require 'spec_helper'

describe file('/etc/apt/sources.list') do
	it { should be_file }
	it { should contain "^# deb cdrom" }
  it { should_not contain "^deb cdrom" }
end
