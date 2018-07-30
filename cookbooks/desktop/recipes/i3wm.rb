
packages = ['i3', 'rxvt-unicode-256color', 'zathura', 'connman']


packages.each do |pkg|
	apt_package pkg do
		action :install
	end
end
