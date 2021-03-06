#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
all_web_nodes = []
members = []

if Chef::Config[:solo]
  Chef::Log.warn("This recipe uses search. Chef Solo does not support search.")
else
  all_web_nodes = search("node","role:web AND chef_environment:#{node.chef_environment}")
end



all_web_nodes.each do |web_node|
  member = {
    "hostname" => web_node["cloud"]["public_hostname"],
    "ipaddress" => web_node["cloud"]["public_ipv4"],
    "port" => 80,
    "ssl_port" => 80
  }
  members.push(member)
end

node.default['haproxy']['members'] = members

node.default['haproxy']['admin']['address_bind'] = "0.0.0.0"


include_recipe "haproxy::default"
