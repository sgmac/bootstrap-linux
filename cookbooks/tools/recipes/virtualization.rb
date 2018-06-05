pkgs = %w{qemu-kvm virtinst virt-manager}

pkgs.each do |package|
	apt_package package do 
		action :install
	end
end
