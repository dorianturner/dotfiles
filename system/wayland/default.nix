{inputs, pkgs, ...}:

{
	imports = [
		./substituters.nix
		./hyprland.nix
		./utilities
		./quickshell
	];
}
