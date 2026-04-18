{ pkgs, ... }:

{
  home-manager.users.shrek = {
    programs.yazi = {
      enable = true;
    };
  };
}
