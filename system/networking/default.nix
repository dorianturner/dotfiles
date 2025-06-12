{
	imports = [
		./proxy.nix
		./firewall.nix
		./ssh.nix
		./networkmanager.nix
	];
	
	networking.hostName = "nixos"; 
	# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
}
