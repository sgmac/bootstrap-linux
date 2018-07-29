
apt_repository 'spotify' do
    uri "http://repository.spotify.com"
    keyserver 'keyserver.ubuntu.com'
    key '931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90'
    action :add
    distribution ''
    components ['stable', 'non-free']
end


apt_update 'update'

apt_package 'spotify-client' do
	action :install
end

