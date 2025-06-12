{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		libsForQt5.dolphin
		git
		kitty
		tree
		vim
		wget
		wofi
	];

	environment.variables.EDITOR = "vim";
}
