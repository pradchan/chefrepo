#
# Cookbook Name:: child_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("I am in parent_cookbook")

include_recipe'child_cookbook::child'

Chef::Log.info("Parent Name: #{node['parent_cookbook']['parentname']}")
Chef::Log.info("Parent Age: #{node['parent_cookbook']['parentage']}")
Chef::Log.info("Child Name: #{node['child_cookbook']['childname']}")
Chef::Log.info("Child Age: #{node['child_cookbook']['childage']}")


service "ssh" do
  action :nothing
end


template '/root/server.xml' do
  source 'server.xml.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    http_port: node['parent_cookbook']['http_port'],
    redirect_port: node['parent_cookbook']['redirect_port'],
    ajp_port: node['parent_cookbook']['ajp_port']
  })
  notifies :restart, 'service[ssh]', :immediately
end