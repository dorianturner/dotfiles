{inputs, pkgs, ...}: 

{
	hjem.users.dorian.files = {
		".config/hypr/hyprpaper.conf" = {
			text = builtins.readFile ./hyprpaper.conf;
			clobber = true;
		};
	};

}
