{ config, pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "monospace:size=14";
      };
      scrollback = {
        lines = 1000;
        multiplier = 5.0;
        indicator-position = "relative";
      };
      cursor = {
        style = "block";
        color = "111111 dcdccc";
        blink = "no";
      };
      bell.urgent = "yes";
    };
  };
}