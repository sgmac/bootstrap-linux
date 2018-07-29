
include_recipe 'desktop::i3wm'
include_recipe 'desktop::tools'
include_recipe 'desktop::spotify'
include_recipe 'desktop::sound'

packages = %w{keepassx evince arandr gnupg telegram-desktop vlc dbus-x11}

packages.each do |pkg|
	apt_package pkg do
	   action :install
	end
end

