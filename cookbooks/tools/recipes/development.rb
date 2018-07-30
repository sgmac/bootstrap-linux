
packages = %w{cmake make python-dev python-virtualenv python-pip jq gitk graphviz}

packages.each do |pkg|
	apt_package pkg do
		action :install
	end
end

python_deps = %w{ libssl-dev zlib1g-dev libbz2-dev libreadline-dev 
	          libsqlite3-dev wget curl llvm libncurses5-dev 
		  libncursesw5-dev xz-utils tk-dev}

python_deps.each do |dep|
	apt_package dep do
		action :install
	end
end

