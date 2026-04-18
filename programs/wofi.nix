{ pkgs, ... }:

{
  home-manager.users.shrek = {
    programs.wofi.enable = true;
    programs.wofi.settings = {
      mode = "drun";
      allow_images = true;
    };

    home.sessionVariables = {
      LAUNCHER = "wofi";
    };
  };

  environment.sessionVariables = {
    LAUNCHER = "wofi";
  }; 
}
