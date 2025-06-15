{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		libsForQt5.dolphin
		git
		kitty
		tree
		wget
		wofi
		sutils
	];

}
