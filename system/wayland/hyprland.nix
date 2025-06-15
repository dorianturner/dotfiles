{inputs, pkgs, ...}: 

{
	programs.hyprland.enable = true;
	programs.hyprland.package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

	hjem.users.dorian.files = {
		".config/hypr/hyprland.conf" = {
			text = builtins.readFile ./hyprland.conf;
		};
	};

}
