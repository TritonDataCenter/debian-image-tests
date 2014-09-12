require 'spec_helper'

describe file('/etc/inittab') do
  it { should be_file }
  it { should contain "# Enable serial console on ttys0" }
  it { should contain "s0:2345:respawn:/sbin/getty -L 115200 ttyS0 vt102" }
end
