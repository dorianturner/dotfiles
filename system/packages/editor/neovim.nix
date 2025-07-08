{
	hjem.users.dorian.files = {
		".config/nvim/init.lua" = {
			text = builtins.readFile ./init.lua;
			clobber = true;
		};
		
		".config/nvim/colors/dune.vim" = {
		    text = builtins.readFile ./dune.vim;
		    clobber = true;
		};
	};
}
