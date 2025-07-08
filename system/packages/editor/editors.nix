{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		neovim 
		vim
		tmux
		nnn # File manager

		wl-clipboard-x11 # Clipboard support
		vimPlugins.telescope-nvim
		vimPlugins.plenary-nvim
	];

	environment.variables.EDITOR = "vim";
}
