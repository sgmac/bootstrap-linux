
system_tools = %w{ htop tcpdump tmux autojump acpi silversearcher-ag}

system_tools.each do |pkg|
	apt_package pkg do
		action :install
	end
end
