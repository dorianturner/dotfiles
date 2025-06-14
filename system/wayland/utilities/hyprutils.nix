{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		hyprpaper
		hyprpicker
		hyprlock
		hyprpolkitagent

		copyq
		dunst
		pipewire
		wireplumber
		
	];

}
