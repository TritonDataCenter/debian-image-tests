require 'spec_helper'

# Product file that lists image and version info
describe file('/etc/product') do
	it { should be_file }
	it { should contain "Name: Joyent Instance" }
	it { should contain "Image: #{attr[:name]} #{attr[:version]}" }
	it { should contain "Documentation: #{attr[:doc_url]}" }
end

# MOTD
describe file('/etc/motd') do
  it { should be_file }
  it { should contain "Instance (#{attr[:name]} #{attr[:version]}" }
  it { should contain "#{attr[:doc_url]}" }
end
