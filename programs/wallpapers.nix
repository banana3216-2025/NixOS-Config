{ pkgs, ... }:

{
  home-manager.users.shrek = {
    home.file."wallpapers" = {
      source = builtins.fetchGit {
        url = "https://github.com/banana3216-2025/wallpapers";
        rev = "22429d9992d2cda614dd99da2bb7b3c48329328e";
      };
      recursive = true;
    };
  };
}
