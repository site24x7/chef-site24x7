#
# Cookbook Name:: site24x7
# Recipe:: uninstall
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

site24x7 'install' do
  package node['package']
  action :uninstall
end
