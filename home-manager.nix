{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.11.tar.gz;
in
{
  imports = [
    # Required
    (import "${home-manager}/nixos")
  ];

  home-manager.users.shrek = { pkgs, ... }: {
    # match this version with that in the "/etc/nixos/configuration.nix"
    home.stateVersion  = "25.11";
    home.username = "shrek";
    home.homeDirectory = "/home/shrek";
  };
}
