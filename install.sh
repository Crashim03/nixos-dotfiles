#!/bin/sh

for file in ./*; do
    [ "$file" != "./install.sh" ] && [ "$file" != "./home-manager" ] && [ "$file" != "./install-home.sh" ] && sudo cp "$file" /etc/nixos
done

sudo nix-channel --update

sudo nixos-rebuild switch

./install-home.sh