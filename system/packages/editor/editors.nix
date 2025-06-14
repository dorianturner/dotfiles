{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		neovim 
		vim
	];

	environment.variables.EDITOR = "vim";
}
