require 'spec_helper'

describe package('acpid') do
  it { should be_installed }
end

describe package('bzip2') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('htop') do
  it { should be_installed }
end

describe package('less') do
  it { should be_installed }
end

describe package('mlocate') do
  it { should be_installed }
end

describe package('ntp') do
  it { should be_installed }
end

describe package('openssh-server') do
  it { should be_installed }
end

describe package('parted') do
  it { should be_installed }
end

describe package('python') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end




