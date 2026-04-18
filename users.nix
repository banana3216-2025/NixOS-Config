{ config, pkgs, ... }:

{
  users.users.shrek = {
    isNormalUser = true;
    description = "shrek";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
