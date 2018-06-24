tools = %w{ ldap-utils }
tools.each do |pkg|
    apt_package pkg do
	action :install
    end
end
