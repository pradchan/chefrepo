#
# Cookbook Name:: my_second_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My Second CookBook., Good Afternoon")
Chef::Log.info("my attribues is #{node['my_second_cookbook']['testvalue']}")

remote_file node['my_second_cookbook']['tightvncnewpath'] do
  source node['my_second_cookbook']['tightvncurl']
  action :create
end