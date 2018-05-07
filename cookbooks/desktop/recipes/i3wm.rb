
packages = []

packages << 'i3'
packages << 'rxvt-unicode-256color'

packages.each do |pkg|
	apt_package pkg do
		action :install
	end
end
