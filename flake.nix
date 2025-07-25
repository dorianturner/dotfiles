{
	description = "Dorian Flake WIP";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
		hjem.url = "github:feel-co/hjem";

		quickshell.url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
		quickshell.inputs.nixpkgs.follows = "nixpkgs";
		
		lanzaboote.url = "github:nix-community/lanzaboote/v0.4.2";
		lanzaboote.inputs.nixpkgs.follows = "nixpkgs";

		utils.url = "github:numtide/flake-utils";
	};

	outputs = inputs@{ self, nixpkgs, utils, hjem, lanzaboote, ... }:
		let
			system = "x86_64-linux";
		in
		{
			nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
				inherit system;
				specialArgs = { inherit inputs system hjem; };
				modules = [ hjem.nixosModules.default ./system lanzaboote.nixosModules.lanzaboote];
			};
		};
}

