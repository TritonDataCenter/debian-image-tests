require 'spec_helper'

# Kernel version should at least be 3.2.82-1
# The vulnerable version is 3.2.78-1
# See: https://security-tracker.debian.org/tracker/CVE-2016-5195
# In time this test will fail as the kernel is updated, but it's useful for now
# to ensure this is patched.

if command('. /etc/os-release && echo $VERSION_ID | grep -q 7').exit_status == 0
  describe command('dpkg-query -l | grep linux-image | grep -q 3.2.82-1') do
    its(:exit_status) { should eq 0 }
  end
end
