{ pkgs, ... }:

{
  imports = [
    ./zsh.nix
  ];

  home-manager.users.shrek = {
    programs.starship = {
      enable = true;
      enableZshIntegration = true;

      settings = {
        add_newline = false;
        format = "[░▒▓](#a3aed2)[  ](bg:#a3aed2 fg:#090c0c)[](bg:#769ff0 fg:#a3aed2)$directory[](fg:#769ff0 bg:#394260)$git_branch$git_status[](fg:#394260 bg:#212736)$nodejs$rust$golang$php[](fg:#212736 bg:#1d2230)$time[ ](fg:#1d2230) $character";
        directory = { style = "fg:#e3e5e5 bg:#769ff0"; format = "[ $path ]($style)"; };
        git_branch = { symbol = ""; style = "fg:#e3e5e5 bg:#394260"; format = "[[ $symbol $branch ]($style)]($style)"; };
        git_status = { style = "fg:#e3e5e5 bg:#394260"; format = "[[($all_status$ahead_behind )]($style)]($style)"; };
      };
    };
  };
}
