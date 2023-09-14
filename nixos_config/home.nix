{ config, pkgs, ... }:

{
  imports =
    [ 
      ./dotfiles/git.nix
      ./dotfiles/foot.nix
      ./dotfiles/helix.nix
      ./dotfiles/sway.nix
    ];

  home = {
    username = "alan";
    homeDirectory = "/home/alan";
    stateVersion = "23.05";

    packages = with pkgs; [
      fuzzel
      cargo
      rustc
      rust-analyzer
      swww
    ];
  };
    
  programs.home-manager.enable = true;
}