{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    swww
  ];

  environment.sessionVariables = {
    WALLPAPER = "swww-daemon";
  };
}
