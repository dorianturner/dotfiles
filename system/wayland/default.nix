{inputs, pkgs, ...}:

{
	imports = [
		./substituters.nix
		./hyprland.nix
		./hyprpaper.nix
		./utilities
		./quickshell
	];
}
