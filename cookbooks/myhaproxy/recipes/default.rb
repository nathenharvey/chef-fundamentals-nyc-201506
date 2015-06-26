#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
node.default['haproxy']['members'] = [
  {
    "hostname" => "ec2-54-208-135-158.compute-1.amazonaws.com",
    "ipaddress" => "54.208.135.158",
    "port" => 80,
    "ssl_port" => 80
  },
  {
    "hostname" => "ec2-54-208-138-164.compute-1.amazonaws.com",
    "ipaddress" => "54.208.138.164",
    "port" => 80,
    "ssl_port" => 80
  }
]


include_recipe "haproxy::default"
