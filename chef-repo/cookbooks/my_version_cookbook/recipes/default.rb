#
# Cookbook Name:: my_version_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end

cookbook_file '/root/config.txt' do
  source 'config.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/root/config.txt' do
  content '<html>This is a placeholder for the home page.</html>\n This is line 2
           and in the third line'
  mode '0755'
  owner 'root'
  group 'root'
end
=end

if node['platform'] == 'windows'
	Chef::Log.info("I am in version windows #{node['platform_version']}")
elsif node['platform'] == 'ubuntu'
	Chef::Log.info("I am in version ubuntu #{node['platform_version']}")
elsif node['platform'] == 'oracle'
	Chef::Log.info("I am in version oracle #{node['platform_version']}")
else
	Chef::Log.info("nothing wokring")
end
