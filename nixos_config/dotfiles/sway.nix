{ config, pkgs, lib, ...}:

{
  wayland.windowManager.sway = {
    enable = true;
    xwayland = true;
    config = rec {
      modifier = "Mod4";
      terminal  = "foot";
      floating.titlebar = false;
      bars = [
        {
          position = "top";
        }
      ];
      gaps = {
        inner = 5;
        outer = 5;
      };
      menu = "fuzzel";
      window.titlebar = false;
      input = {
        "*" = {
          repeat_delay = "200";
          repeat_rate = "40";
        };
      };
      keybindings = lib.mkOptionDefault {
          "Control+Shift+S" = "exec grim -g \"$(slurp)\" ~/Pictures/$(date +'%s_grim.png')";
          "Mod4+Shift+S" = "exec grim -g \"$(slurp -d)\" - | wl-copy";
      };
    };
  };
}