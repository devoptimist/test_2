#
# Cookbook:: test_2
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

remote_file '/bin/jq' do
  source node['test_2']['jq_url']
  mode '0755'
end

template '/var/tmp/test_2_details.sh' do
  source 'details.sh.erb'
  variables(
    name: node['test_2']['name'],
    channel: node['test_2']['channel'],
    install_version: node['test_2']['install_version'],
    chef_server_name: node['test_2']['chef_server_name']
  )
end
