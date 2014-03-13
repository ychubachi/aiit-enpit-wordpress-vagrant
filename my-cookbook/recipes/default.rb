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
include_recipe 'mysql::server'
include_recipe 'nginx'
include_recipe 'php'
include_recipe 'application'

application 'aiit-enpit-wordpress' do
  path  '/var/www/aiit-enpit-wordpress'
  owner 'www-data'
  group 'www-data'

  repository 'https://github.com/ychubachi/aiit-enpit-wordpress.git'
#  revision   'production'
end

