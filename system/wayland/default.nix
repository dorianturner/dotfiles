{inputs, pkgs, ...}:

{
	imports = [
		./substituters.nix
		./hyprland.nix
		./hyprpaper.nix
		./quickshell.nix
		./utilities
		./quickshell
	];
}
