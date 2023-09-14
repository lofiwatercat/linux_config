{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "lofiwatercat";
    userEmail = "alan001tk@gmail.com";
  };
}
