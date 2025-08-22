{
  dconf.settings = {
    "org/gnome/mutter/keybindings" = {
      toggle-tiled-right = ["<Super>Right" "<Super>KP_Right"];
      toggle-tiled-left = ["<Super>Left" "<Super>KP_Left"];
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Super>Q"];
      minimize = ["<Super>Down" "<Super>KP_Down" ];
      toggle-maximized = ["<Super>Up" "<Super>KP_Up"];
      maximize = [];
      begin-resize = ["<Super>Return" ];

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
      command = "zen";
      binding = "<Super>b";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files" = {
      name = "Launch Files";
      command = "nautilus";
      binding = "<Super>f";
    };
  };
}
