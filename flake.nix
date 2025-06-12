{
	description = "Dorian Flake WIP";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
	};

	outputs = inputs@{self, nixpkgs, ...}: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = {inherit inputs;};
			modules = [
				./system
			];
		};
	};
}
