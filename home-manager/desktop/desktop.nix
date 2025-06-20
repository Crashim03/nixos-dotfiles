{ config, pkgs, ... }:

{
    imports = [
      ./kitty.nix
      ./keyboard.nix
      ./zsh.nix
    ];

    home.packages = with pkgs; [
        obs-studio
        vscode
        discord
        nextcloud-client
        spotify
        steam
        dconf-editor
        kitty
        libreoffice
        chromium
	qownnotes
    ];
}
