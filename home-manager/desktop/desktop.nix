{ config, pkgs, ... }:

{
    imports = [
      ./kitty.nix
      ./keyboard.nix
    ];

    home.packages = with pkgs; [
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
	stremio
	droidcam
    ];

    programs.obs-studio = {
      enable = true;
      plugins = with pkgs.obs-studio-plugins; [
        droidcam-obs
      ];
    };
}
