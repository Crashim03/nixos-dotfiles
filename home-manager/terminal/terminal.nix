
{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "alex";
  home.homeDirectory = "/home/alex";

  xdg.enable = true;
  xdg.mime.enable = true;

  home.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  nix.package = pkgs.nix;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      cd = "z";
    };

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" "z" "sudo" ];
    };
  };

  home.packages = with pkgs; [
    ansible
    zsh
    fzf
    zoxide
  ];

  programs.git = {
    enable = true;
    userName = "Crashim03";
    userEmail = "alexteloduarte@gmail.com";
  };

  programs.home-manager.enable = true;
}

