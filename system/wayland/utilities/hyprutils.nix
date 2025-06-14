{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		hyprpaper
		hyprpicker
		hyprlock
	];

}
