{ pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    vim # text editor
    git # required for flake setup
    gh # allows easier use of github with git
  ];
}
