{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable> {
    config = {
      allowUnfree = true;
    };
  };
in
{

    imports = [
      ./kitty.nix
      ./keyboard.nix
    ];

    home.packages = with pkgs; [
        unstable.vscode
        discord
        nextcloud-client
        spotify
        steam
        dconf-editor
        kitty
        libreoffice
        unstable.joplin-desktop
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
