{
	hjem.users.dorian.files = {
		".config/nvim/init.lua" = {
			text = builtins.readFile ./init.lua;
			clobber = true;
		};
	};
}
