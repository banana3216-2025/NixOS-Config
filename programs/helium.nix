{ config, pkgs, ... }:

{
  environment.systemPackages = [
    (import (builtins.fetchTarball "https://github.com") {}).defaultPackage.${pkgs.system}
    pkgs.nur.repos.Ev357.helium
  ];
}
