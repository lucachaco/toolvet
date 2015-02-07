#!/usr/bin/env bash

apt-get update

echo 'mysql-server-5.5 mysql-server/root_password password toor' | debconf-set-selections
echo 'mysql-server-5.5 mysql-server/root_password_again password toor' | debconf-set-selections
apt-get -y install mysql-client mysql-server-5.5 

apt-get -y install php5  php-apc php5-mysql php5-dev php5-intl curl

apt-get install -y git

apt-get install -y sendmail

#install rails ->https://gorails.com/setup/ubuntu/14.10
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.1.5
rbenv global 2.1.5
ruby -v

echo "gem: --no-ri --no-rdoc" > ~/.gemrc


#install node
#https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get -y install nodejs


gem install rails

rbenv rehash

#http://stackoverflow.com/questions/3608287/error-installing-mysql2-failed-to-build-gem-native-extension
apt-get install libmysqlclient-dev

# for pdf support ->  http://stackoverflow.com/questions/17557064/wicked-pdf-does-not-run-on-ubuntu-server-wkhtmltopdf-cannot-connect-to-x-serv


