require 'spec_helper'

# Ensure root password is set and password matches value in metadata
# Need to somehow validate that it's not the same as livecd and that
# it matches value from mdata-get

# Make sure default live-build password is not set
# We want to explicitly test for this first to ensure the default password from
# the live-build is not leaking through.
describe command("cat /etc/shadow | grep root | awk -F':' '{print $2;}'") do
  it { should_not return_stdout "$1$qHFOhAjw$AjgoyfS8u32uqV8qsL1r70" }
end

# Make sure no password is set
describe command("cat /etc/shadow | grep root | awk -F':' '{print $2;}'") do
  it { should return_stdout "" }
end
