{
	hjem.users.dorian.files = {
		".config/hypr/hyprland.conf" = {
			enable = true;
			target = ".config/hypr/hyprland.conf";
			text = builtins.readFile ./hyprland.conf;
		};
	};
}
