{inputs, pkgs, ...}: 

{
	programs.hyprland.enable = true;
	programs.hyprland.package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
}
