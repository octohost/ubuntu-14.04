#!/bin/bash
sudo apt-get install -y ruby1.9.1
sudo gem install bundler --no-ri --no-rdoc
cd /tmp/tests
bundle install --path=vendor
bundle exec rake spec
