
packages = %w{xpdf ranger xclip xbacklight}

packages.each do |pkg|
	apt_package pkg do
	   action :install
	end
end
