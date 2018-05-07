#
# Cookbook:: deprecated
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_package 'thunderbird' do
	action :remove
end
