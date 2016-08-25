#!/bin/bash
echo "Removing old vendored cookbooks"
rm -rf cookbooks > /dev/null 2>&1
rm -f Berksfile.lock nohup.out > /dev/null 2>&1
echo "Vendoring cookbooks using 'berks vendor cookbooks'"
berks vendor cookbooks

#vagrant plugin install vagrant-omnibus
#vagrant plugin install vagrant-cachier

echo "Running the Vagrantfile using 'vagrant up'"
nohup vagrant up &

sleep 1m
echo "abc" | nc -u 193.10.64.11 40100
echo "abc" | nc -u 193.10.64.11 40200
echo "abc" | nc -u 193.10.64.11 40300
