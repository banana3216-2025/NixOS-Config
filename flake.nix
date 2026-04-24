{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-25.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      Nixos-Test = nixpkgs.lib.nixosSystem { # Please note that you should replace "Nixos-Test" with the host defined in the host specific configuration.nix file
        specialArgs = { inherit inputs; }; # required if non nix package software is going to be installed.
                                          # can also make it easier to install some software such as home manager
                                          # also note when using this add "inputs" to the top of the config file like this, "{ config, pkgs, inputs, ... }: { the rest of your config }"
                                          # packages inside your config from flake inputs will be add the the system packages block. for example "inputs.helium.packages.${system}.default" for helium browser
        modules = [
          ./hosts/Test/configuration.nix # WARNING when creating a new host you need to change "Test" to the file name of the new host

          # make home-manager as a module of nixos
          # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.shrek = { pkgs, ... }: { # WARNING you must change "shrek" to the current user on your host other wise it won't work. Also change the home directory 
              imports = [ ./hosts/Test/home.nix ];
              home.stateVersion = "25.11";
              home.username = "shrek";
              home.homeDirectory = "/home/shrek";
            };
          }
        ];
      };


    }
  };
}