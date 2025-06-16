{
	hjem.users.dorian.files = {
		".zshrc" = {
			text = builtins.readFile ./zshrc;
			clobber = true;
		};
	};
}
