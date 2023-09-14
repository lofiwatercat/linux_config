{
  description = "Alan's NixOS Flake";

  nixConfig = {
    experimental-features = [ "nix-command" "flakes" ];
    substituters = [
      "https://cache.nixos.org/"
    ];
    extra-substituters = [
      "https://nix-community.cachix.org"
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.packages.${system};
  in {
    packages.${system} = {
      alan = with pkgs; {
        inherit helix;
      };
    };
    nixosConfigurations = {
      grit = nixpkgs.lib.nixosSystem {
        inherit system;
        # specialArgs = inputs;
        modules = [
          ./configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.alan = import ./home.nix;
            };
          }
        ];
      };
    };
  };
}

