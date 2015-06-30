require 'spec_helper'

# Ensure hostname is not carried over from live-cd build
describe command('hostname') do
  its(:stdout) { should_not eq 'debian-7' }
end

# Ensure hostname is not carried over from live-cd build
describe command('hostname') do
  its(:stdout) { should_not eq 'debian-8' }
end

describe command('hostname') do
  its(:stdout) { should_not eq 'bad' }
end

describe command('hostname') do
  its(:stdout) { should_not eq 'none' }
end
