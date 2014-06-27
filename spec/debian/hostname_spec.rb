require 'spec_helper'

# Ensure hostname is not carried over from live-cd build
describe command('hostname') do
  it { should_not return_stdout 'debian-7' }
end

describe command('hostname') do
  it { should_not return_stdout 'bad' }
end

describe command('hostname') do
  it { should_not return_stdout 'none' }
end
