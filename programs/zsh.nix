{ pkgs, ... }:

{
  programs.zsh.enable = true;
  users.users.shrek.shell = pkgs.zsh;

  programs.zsh.shellAliases = {
    ls = "ls -ahl";
    rebuild = "sudo nixos-rebuild switch";
  };

  home-manager.users.shrek = {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
}
