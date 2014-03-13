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
include_recipe 'nginx'
include_recipe 'php5_ppa'
include_recipe 'php'
include_recipe 'php-fpm'
include_recipe 'nginx-fastcgi'

nginx_fastcgi '/etc/nginx/sites-available/aiit-enpit-wordpress.conf' do
  root '/vagrant/aiit-enpit-wordpress'
  socket '/var/run/php-fpm-www.sock'

  static(
         :location => 'html/',
         :root => '/vagrant/aiit-enpit-wordpress/html'
         )

  fastcgi_param  [
                  { :name => 'CLEARDB_DATABASE_URL',
                    :value => "mysql://be7ca326aa4cc9:e1489f17@us-cdbr-east-05.cleardb.net/heroku_9c199f87aa077b1?reconnect=true" }
                 ]

  servers [
           {
             :server_name => 'vagrant',
           }
          ]
end
