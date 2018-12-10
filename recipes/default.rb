#
# Cookbook Name:: site24x7
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/tmp/site24x7agent' do
  mode 0o755
  action :create
end

site24x7 'get_package' do
  package node['package']
  action :create
end

file "/tmp/site24x7agent/#{node['package']}" do
  mode 0o755
end

site24x7 'install' do
  key node['Site24x7']['devicekey']
  package node['package']
  proxy node['Site24x7']['proxy']
  action :install
end

service 'site24x7monagent' do
  supports status: true, restart: true, reload: true
  action %i[enable start]
end
