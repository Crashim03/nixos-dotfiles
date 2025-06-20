
{ config, pkgs, ... }:

{
  imports = [
    ./desktop/desktop.nix
    ./terminal/terminal.nix
  ];
}

