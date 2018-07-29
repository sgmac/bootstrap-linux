#
# Cookbook:: tools
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'tools::docker'
include_recipe 'tools::system'
include_recipe 'tools::development'
include_recipe 'tools::golang'
include_recipe 'tools::virtualization'
include_recipe 'tools::ldap'

systools = %w{ vim git build-essential openvpn curl irssi}
systools.each do |pkg|
    apt_package pkg do
	action :install
    end
end
