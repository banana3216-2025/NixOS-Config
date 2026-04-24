{ config, pkgs, ... }:

{
  import = [
     ./../../core.nix # Includes core packages and options required for basic system operation
     ./hardware-configuration.nix # Note this file controls things like disk partining networking and other device specific hardware options
  ]


  #---- KERNEL ----
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;


  #---- USERS ----
  users.users.shrek = {
    isNormalUser = true;
    description = "shrek";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };


  #---- LOCALE ----
  # Set your time zone.
  time.timeZone = "America/Chicago";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };


  #---- FONTS ----
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];


  #---- NETWORKING ----
  networking.hostName = "Nixos-Test"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;
  # Enables wireless support via wpa_supplicant.
  # networking.wireless.enable = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;


  #---- PACKAGES ----

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs; [
    vscode
  ];

  # allow nonfree packages
  nixpkgs.config.allowUnfree = true;


  system.stateVersion = "25.11";
}
