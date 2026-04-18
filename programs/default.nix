{ pkgs, ... }:

{
  imports = [
    # required
    ./gtk.nix

    # optional
    ./SSH.nix
    ./hyprland.nix
    ./swww.nix
    ./kitty.nix
    ./yazi.nix
    ./thunar.nix
    # ./lazyvim.nix
    ./zsh.nix
    ./starship.nix
    ./wofi.nix
    ./waybar.nix
    ./firefox.nix
    #./helium.nix
    ./wallpapers.nix
  ];
}
