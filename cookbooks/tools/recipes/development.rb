
packages = %w{cmake make python-dev python-virtualenv python-pip jq emacs gitk}

packages.each do |pkg|
	apt_package pkg do
		action :install
	end
end

python_deps = %w{ libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev }

python_deps.each do |dep|
	apt_package dep do
		action :install
	end
end

apt_repository 'yarn' do
	uri 'https://dl.yarnpkg.com/debian'
	key 'https://dl.yarnpkg.com/debian/pubkey.gpg'
	action :add
	distribution ''
	components ['stable', 'main']
end

# node = []
# node << "nodejs"
# node << "npm"
# node << "yarn"

# node.each do |pkg|
# 	apt_package pkg do
# 		action :install
# 	end
# end



