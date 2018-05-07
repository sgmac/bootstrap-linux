
include_recipe 'desktop::i3wm'

packages = %w{keepassx spotify-client evince}
apt_repository 'spotify' do
    uri "http://repository.spotify.com"
    keyserver 'keyserver.ubuntu.com'
    key '0DF731E45CE24F27EEEB1450EFDC8610341D9410'
    action :add
    distribution ''
    components ['stable', 'non-free']
end

packages.each do |pkg|
	apt_package pkg do
	   action :install
	end
end

