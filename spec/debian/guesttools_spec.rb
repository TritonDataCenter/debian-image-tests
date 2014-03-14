require 'spec_helper'

# Ensure guest tools are installed 
describe file('/usr/sbin/mdata-get') do
  it { should be_file }
	it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-list') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-put') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/sbin/mdata-delete') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/lib/smartdc/mdata-get') do
	it { should be_file }
	it { should be_linked_to '/usr/sbin/mdata-get' }
end

