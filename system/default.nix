{
	imports = [
		./boot
		./configuration.nix	
		./hardware-configuration.nix
		./services
		./networking
		./packages
		./wayland
	];

	# Settings with no clear category
	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = ["nix-command" "flakes"];

	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "25.05"; 
}
