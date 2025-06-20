{ config, pkgs, ... }:

{
    imports = [
      ./kitty.nix
      ./keyboard.nix
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
