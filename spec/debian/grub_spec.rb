require 'spec_helper'

describe file('/etc/default/grub') do
	it { should be_file }
	it { should contain "tsc=reliable" }
  it { should contain "divider=10" }
  it { should contain "console=ttyS0,115200n8" }
  it { should contain "console=tty0" }
  it { should contain "GRUB_TIMEOUT=5" }
end
