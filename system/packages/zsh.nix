{pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
	    zsh
	    zsh-autosuggestions
	    zsh-syntax-highlighting
	    zsh-powerlevel10k
	];

	hjem.users.dorian.files = {
		".zshrc" = {
			text = builtins.readFile ./zshrc;
			clobber = true;
		};
	};
}
