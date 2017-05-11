#
# Cookbook Name:: my_env_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("I am in my_env_cookbook version with override = #{node['my_env_cookbook']['override']}")
Chef::Log.info("I am in my_env_cookbook version 0.3.0")

bash 'install_something' do
  user 'root'
  cwd '/root'
  code <<-EOH
  mkdir -p pradeep/raj/ramu
  echo "creating file" > one.txt
  EOH
end

user 'guest' do
  comment 'guest user'
  uid '1234'
  gid '1001'
  home '/home/guest'
  shell '/bin/bash'
  password '$1$RmbVG/eh$NSz1t8e1/H1CYOf8znqBj0'
end