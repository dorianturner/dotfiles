{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		neovim 
		vim

		wl-clipboard-x11 # Clipboard support
	];

	environment.variables.EDITOR = "vim";
}
