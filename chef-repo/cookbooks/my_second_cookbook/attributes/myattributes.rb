default['my_second_cookbook']['testvalue'] = 'my test values of cookbook'
default['my_second_cookbook']['tightvncexe'] = 'tightvnc-2.8.8-gpl-setup-64bit.msi'
default['my_second_cookbook']['tightvncnewpath'] = "d:/try2/#{node['my_second_cookbook']['tightvncexe']}"
default['my_second_cookbook']['tightvncurl'] = "http://www.tightvnc.com/download/2.8.8/#{node['my_second_cookbook']['tightvncexe']}"