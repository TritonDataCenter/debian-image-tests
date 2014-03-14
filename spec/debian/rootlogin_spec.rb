require 'spec_helper'

# Ensure root password is set and password matches value in metadata
# Need to somehow validate that it's not the same as livecd and that
# it matche value from mdata-get

# 
#describe command('cat /etc/passwd | grep root | awk -F':' '{print $2;}'') do
#  it { should_not return_stdout "x" }
#end
