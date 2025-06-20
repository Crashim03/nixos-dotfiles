#!/bin/sh

rm -rf ~/.config/home-manager
cp -r ./home-manager ~/.config/

home-manager switch
