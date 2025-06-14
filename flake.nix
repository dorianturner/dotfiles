{
	description = "Dorian Flake WIP";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
		hjem.url = "github:feel-co/hjem";

		quickshell.url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
		quickshell.inputs.nixpkgs.follows = "nixpkgs";

		utils.url = "github:numtide/flake-utils";
	};

	outputs = inputs@{ self, nixpkgs, utils, hjem, ... }:
		let
			system = "x86_64-linux";
		in
		utils.lib.eachDefaultSystem (system:
			let
				pkgs = import nixpkgs { inherit system; };
			in {
				devShells.c = import ./system/devshell/c.nix { inherit pkgs; };
				devShells.haskell = import ./system/devshell/haskell.nix { inherit pkgs; };
			}
		) // {
			nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
				inherit system;
				specialArgs = { inherit inputs system hjem; };
				modules = [ hjem.nixosModules.default ./system ];
			};
		};
}

