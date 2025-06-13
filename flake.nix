{
	description = "Dorian Flake WIP";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

		quickshell.url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
		quickshell.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = inputs@{ self, nixpkgs, ... }:
	let
		system = "x86_64-linux";
	in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = {
				inherit inputs system;
			};
			modules = [
				./system
			];
		};
	};
}

