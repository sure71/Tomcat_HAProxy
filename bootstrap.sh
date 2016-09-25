#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
yum install epel-release -y
yum install ansible -y 

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/Tomcat/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.21	web1
10.0.15.22	web2
10.0.15.11	lb
EOL
