#
# Cookbook:: test_2
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/var/tmp/test_2_details.sh' do
  source 'details.sh.erb'
  variables(
    name: node['test_2']['name'],
    channel: node['test_2']['channel'],
    install_version: node['test_2']['install_version']
  )
end
