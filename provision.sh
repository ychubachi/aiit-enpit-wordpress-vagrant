#!/bin/bash

rm -rf ./vagrant/cookbooks/
cd my-cookbook/
berks vendor ../vagrant/cookbooks
cd ..

cd vagrant/
vagrant provision
cd ..
