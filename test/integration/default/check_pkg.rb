describe package('wget') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('redis-server') do
  it { should be_installed }
end
