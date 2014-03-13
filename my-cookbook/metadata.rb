name             'my-cookbook'
maintainer       'Yoshihide Chubachi'
maintainer_email 'yoshi@chubachi.net'
license          'All rights reserved'
description      'Installs/Configures my-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'git'
depends 'hub'
depends 'mysql'
depends 'nginx'
depends 'php'

