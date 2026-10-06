{
  description = "Declarative macOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs @ {
    nix-darwin,
    home-manager,
    nix-homebrew,
    ...
  }: let
    system = "aarch64-darwin";
    username = "uefi";
  in {
    darwinConfigurations.mac = nix-darwin.lib.darwinSystem {
      inherit system;
      specialArgs = {inherit inputs username;};

      modules = [
        ./hosts/mac
        nix-homebrew.darwinModules.nix-homebrew
        home-manager.darwinModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit username;};
            users.${username} = import ./home/default;
          };
        }
      ];
    };
  };
}
