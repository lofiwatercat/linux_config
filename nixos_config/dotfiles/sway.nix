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
          "XF86AudioMute" = "exec pactl set-sink-mute @DEFAULT_SINK@ toggle";
          "XF86AudioRaiseVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ +5%";
          "XF86AudioLowerVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ -5%";
      };
      startup = [
        { command = "swww init"; }
        { command = "swww img ~/.config/wallpapers/anime-gruv-light.png"; }
      ];
    };
  };
}