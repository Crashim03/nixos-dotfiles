#!/bin/sh

for file in ./*; do
    [ "$file" != "./install.sh" ] && sudo cp "$file" /etc/nixos
done

sudo nixos-rebuild switch