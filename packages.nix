{ config, pkgs, ... }:

{
  # allow nonfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also>
    git
    gh
    btop
    fastfetch
  ];
}
