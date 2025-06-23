{
  programs.kitty = {
    enable = true;
    extraConfig = ''
      background #212733
      foreground #d9d7ce
      cursor     #ffcc66
      selection_background #343f4c
      selection_foreground #212733
      background_opacity 0.80
      enabled_layouts splits

      map ctrl+shift+return launch --location=split

      map alt+left neighboring_window left
      map alt+kp_left neighboring_window left

      map alt+right neighboring_window right
      map alt+kp_right neighboring_window right

      map alt+up neighboring_window up
      map alt+kp_up neighboring_window up

      map alt+down neighboring_window down
      map alt+kp_down neighboring_window down

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
}
