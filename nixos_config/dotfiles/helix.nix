{ config, pkgs, ... }:

{
  
    programs.helix = {
      enable = true;
      defaultEditor = true;
      settings = {
        theme = "base16_default_dark";
        editor = {
          line-number = "relative";
          scrolloff = 7;
          cursorline = true;
          bufferline = "multiple";
          text-width = 100;
          file-picker.hidden = false;
          indent-guides.render = true;
          statusline = {
            left = [ "mode" "spinner" ];
            center = [ "file-name" ];
          };
          soft-wrap = {
            enable = true;
            max-wrap = 25;
            wrap-at-text-width = true;
          };
        };
        keys.normal.space = {
          w = ":write";
          q = ":quit";
        };
      };
    };
}
