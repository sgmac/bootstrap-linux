
dependencies = %w{ apt-transport-https ca-certificates curl software-properties-common }

dependencies.each do |dep|
     apt_package dep do
	 action :install
     end
end

apt_repository 'docker' do
	uri 'https://download.docker.com/linux/ubuntu'
	key 'https://download.docker.com/linux/ubuntu/gpg'
	arch 'amd64'
	components ['stable']
end

execute 'apt-get update -y' do
	command "apt-get update -y"
	action :nothing
end

apt_package 'docker-ce' do
	action :install
end
