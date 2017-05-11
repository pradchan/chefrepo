#
# Cookbook Name:: my_first_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My First CookBook., Good Morning")
=begin
# Resource 1
directory '/root/apache2/test1' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

# Resource 2
%w[ /foo /foo1/bar /foo2/bar/baz ].each do |path|
 directory path do
   owner 'root'
   group 'root'
   mode '0755'
   recursive true
 end
end




# Resource 3
remote_file 'd:/try/tightvnc/tightvnc-2.8.8-gpl-setup-64bit.msi' do
  source 'http://www.tightvnc.com/download/2.8.8/tightvnc-2.8.8-gpl-setup-64bit.msi'
  action :create
end

=end

# Resource 4
execute 'InstallTightVnc' do
  command 'd:/try/tightvnc/tightvnc-2.8.8-gpl-setup-64bit.msi /quiet'
end
