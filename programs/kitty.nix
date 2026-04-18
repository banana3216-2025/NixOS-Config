{ pkgs, ... }:

{
  environment.sessionVariables = {
    TERMINAL = "kitty";
  };

  home-manager.users.shrek = {
    programs.kitty = {
      enable = true;
      font = {
        name = "JetBrainsMono Nerd Font";
        size = 11;
      };
      settings = {
        scrollback_lines = 10000;
        enable_audio_bell = false;
        update_check_interval = 0;
        copy_on_select = "yes";
        confirm_os_window_close = 0;
        background_opacity = 0.70;
      };
    };
  };
}
