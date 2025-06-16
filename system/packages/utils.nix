{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		libsForQt5.dolphin
		brightnessctl
		git
		kitty
		tree
		wget
		wofi
		sutils
		gnumake
		cargo
		zsh
		sbctl # troubleshooting for secure boot
	];

}
