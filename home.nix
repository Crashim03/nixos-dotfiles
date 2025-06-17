{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "alex";
  home.homeDirectory = "/home/alex";

  xdg.enable = true;
  xdg.mime.enable = true;

  home.stateVersion = "25.05"; # Please read the comment before changing.
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    obs-studio
    vscode
    discord
    ansible
    nextcloud-client
    spotify
    steam
    zsh
    dconf-editor
    kitty
    libreoffice
    chromium
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      ll = "ls -la";
      gs = "git status";
    };

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" "z" "sudo" ];
    };
  };

  programs.kitty = {
    enable = true;
    extraConfig = ''
      background #212733
      foreground #d9d7ce
      cursor     #ffcc66
      selection_background #343f4c
      selection_foreground #212733

      color0  #191e2a
      color8  #686868
      color1  #ed8274
      color9  #f28779
      color2  #a6cc70
      color10 #bae67e
      color3  #fad07b
      color11 #ffd580
      color4  #6dcbfa
      color12 #73d0ff
      color5  #cfbafa
      color13 #d4bfff
      color6  #90e1c6
      color14 #95e6cb
      color7  #c7c7c7
      color15 #ffffff
    '';
  };

  programs.git = {
    enable = true;
    userName = "Crashim03";
    userEmail = "alexteloduarte@gmail.com";
  };

  dconf.settings = {
    "org/gnome/mutter/keybindings" = {
      toggle-tiled-right = ["<Super>Right" "<Super>KP_Right"];
      toggle-tiled-left = ["<Super>Left" "<Super>KP_Left"];
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Super>Q"];
      minimize = ["<Super>N"];
      maximize = ["<Super>Up" "<Super>KP_Up"];

      switch-to-workspace-left = ["<Super><Ctrl>Left" "<Super><Ctrl>KP_Left"];
      switch-to-workspace-right = ["<Super><Ctrl>Right" "<Super><Ctrl>KP_Right"];
      switch-to-workspace-down = ["<Super><Ctrl>Down" "<Super><Ctrl>KP_Down"];
      switch-to-workspace-up = ["<Super><Ctrl>Up" "<Super><Ctrl>KP_Up"];

      move-to-workspace-down = ["<Super><Shift>Down" "<Super><Shift>KP_Down"];
      move-to-workspace-up = ["<Super><Shift>Up" "<Super><Shift>KP_Up"];
      move-to-workspace-left = ["<Super><Shift>Left" "<Super><Shift>KP_Left"];
      move-to-workspace-right = ["<Super><Shift>Right" "<Super><Shift>KP_Right"];

      move-to-monitor-right = ["<Super><Alt>Right" "<Super><Alt>KP_Right"];
      move-to-monitor-left = ["<Super><Alt>Left" "<Super><Alt>KP_Left"];
      move-to-monitor-up = ["<Super><Alt>Up" "<Super><Alt>KP_Up"];
      move-to-monitor-down = ["<Super><Alt>Down" "<Super><Alt>KP_Down"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal" = {
      name = "Launch Terminal";
      command = "kitty zsh";
      binding = "<Super>t";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser" = {
      name = "Launch Browser";
      command = "firefox";
      binding = "<Super>b";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files" = {
      name = "Launch Files";
      command = "nautilus";
      binding = "<Super>f";
    };
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
