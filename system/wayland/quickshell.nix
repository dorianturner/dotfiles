{ config, inputs, system, ... }:

{
	environment.systemPackages = [ inputs.quickshell.packages.${system}.default ];
}

