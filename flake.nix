{  
  description = "DTizzy's NixOS Flake";


  inputs = {
    anyrun.url = "github:anyrun-org/anyrun";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-small.url = "github:nixos/nixpkgs/nixos-unstable-small"; 

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    hyprland.url = "github:hyprwm/hyprland";
    
    schizofox.url = "github:schizofox/schizofox";
    schizofox.inputs.nixpkgs.follows = "nixpkgs-small";
   };

  outputs = { self, ... } @inputs: {

    # Replace .nixos with hostname if changed from default
    nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };      

      modules = [
	./system/default.nix

	inputs.home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.verbose = true;

            # Replace dorian with your own username
            home-manager.users.dorian = import ./home/default.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass arguments to home.nix
          }

      ];

    };
  };
}
