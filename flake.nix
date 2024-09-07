{
  outputs =
    {
      nix-vscode-extensions,
      home-manager,
      nixpkgs,
      nixos-hardware,
      ...
    }:
    let
      type = "x86_64-linux";
    in
    {
      homeConfigurations = {
        "x@x" = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = {
            extensions = nix-vscode-extensions.extensions.${type};
          };
          modules = [ ./p/x.nix ];
          pkgs = nixpkgs.legacyPackages.${type};
        };
      };
      homeManagerModules = { };

      nixosConfigurations = {
        x = nixpkgs.lib.nixosSystem {
          modules = [
            /etc/nixos/hardware-configuration.nix
            ./o/x.nix
            nixos-hardware.nixosModules.apple-t2
            home-manager.nixosModule
          ];
          system = type;
        };
      };
      nixosModules = { };
    };

  inputs = {
    nix-vscode-extensions = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/nix-vscode-extensions/master";
    };

    home-manager = {
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
      url = "github:nix-community/home-manager/master";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
  };

  description = "NixOS";
}
