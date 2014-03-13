# -*- coding: utf-8 -*-
# mysqlのパスワード
default["mysql"]["server_root_password"] = "testpass"
default["mysql"]["server_repl_password"] = "testpass"
default["mysql"]["server_debian_password"] = "testpass"

# nginxでdefaultのサイトを作成しない
default['nginx']['default_site_enabled'] = false
