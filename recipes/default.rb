# Common setup for all vagrant boxes

apt_repository 'foundation' do
  uri 'http://packages.dev.uswest.hpcloud.net/cloud/foundation'
  arch 'amd64'
  distribution node['lsb']['codename']
  components ['main', 'restricted', 'universe', 'multiverse']
  key 'http://packages.dev.uswest.hpcloud.net/cloud/som/developer/hpcs.gpg'
end

apt_repository 'foundation-updates' do
  uri 'http://packages.dev.uswest.hpcloud.net/cloud/foundation'
  arch 'amd64'
  distribution "#{node['lsb']['codename']}-updates/snapshots/rc20140129"
  components ['main', 'restricted', 'universe', 'multiverse']
  key 'http://packages.dev.uswest.hpcloud.net/cloud/som/developer/hpcs.gpg'
end

apt_repository 'dev' do
  uri 'http://packages.dev.uswest.hpcloud.net/cloud/som/developer'
  arch 'amd64'
  distribution node['lsb']['codename']
  components ['release']
  key 'http://packages.dev.uswest.hpcloud.net/cloud/som/developer/hpcs.gpg'
end
