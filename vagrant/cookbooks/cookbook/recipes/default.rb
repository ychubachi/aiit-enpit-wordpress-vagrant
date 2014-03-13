#
# Cookbook Name:: my-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'git'
include_recipe 'hub'
include_recipe 'mysql::server'
include_recipe "database::mysql"
include_recipe 'nginx'
include_recipe 'php5_ppa'
include_recipe 'php'
include_recipe 'php-fpm'

mysql_database 'wordpress' do
  connection( :host => 'localhost',
              :username => 'root',
              :password => node['mysql']['server_root_password'] )
  action :create
end

package 'php5-mysql' do
  action :install
end

template '/etc/nginx/sites-available/aiit-enpit-wordpress.conf' do
  source 'aiit-enpit-wordpress.conf.erb'
end

link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/aiit-enpit-wordpress.conf'
end
