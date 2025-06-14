{inputs, pkgs, ...}:

{
	imports = [
		./substituters.nix
		./hyprland.nix
		./hyprlandconf.nix
	];
}
