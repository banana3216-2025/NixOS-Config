{ pkgs, ... }:

{
  home-manager.users.shrek = {
    home.pointerCursor = {
      gtk.enable = true;
      # x11.enable = true; # Uncomment if you use XWayland
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 12;
    };

    gtk = {
      enable = true;
      iconTheme = {
        package = pkgs.papirus-icon-theme;
        name = "Papirus-Dark";
      };
      cursorTheme = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Classic";
      };
    };
  };
}
