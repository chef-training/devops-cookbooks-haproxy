#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [{
	  'hostname' => 'cloud.public_hostname',
	  'ipaddress' => 'cloud.public_ipv4',
	  'port' => 80,
	  'ssl_port' => 80
	}]
	
include_recipe 'haproxy::manual'
