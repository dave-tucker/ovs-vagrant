ovs-vagrant
===========

Quickly create a development environment for Open vSwitch


Install
=======

Make sure you have [Vagrant](http://www.vagrantup.com/downloads.html) installed on your workstation.

Clone this repository, and copy the contents to your OVS working directory

Usage
=====
  
Create a development machine

    # Pull up the default machine (Ubuntu)
    vagrant up 

    # Pull up a specific machine
    vagrant up fedora
    vagrant up centos
    vagrant up freebsd
  
To access your machine:

    vagrant ssh fedora

To run the tests (when SSH'd):

    mkdir ~/openvswitch
    cp -rvf /vagrant/* ~/openvswitch/
    cd ~/openvswitch
    ./boot.sh
    ./configure
    make
    make check 

ToDo
====

- autoconf version on CentOs does not meet the minimum requirement
- freebsd 10 image has "disappeared" - gives 404
  + freebsd 9.2 image doesn't have the right vbox additions
