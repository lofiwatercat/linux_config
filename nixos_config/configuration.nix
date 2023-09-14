{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix 
    ];


  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 1w";
  };

  nix.settings.auto-optimise-store = true;

  networking = {
    hostName = "grit";
    networkmanager.enable = true;
  };

  # Set your time zone.
  time.timeZone = "America/Los_Angeles";

  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;  

  i18n.defaultLocale = "en_US.UTF-8";

  # Fonts
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
  ];

  services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  security.polkit.enable = true;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.alan = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" ];
   };

  nix.settings.trusted-users = [ "alan" ];

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    sway
    foot
    firefox
    tree
    grim
    slurp
    imv
    wl-clipboard

    # Create an FHS environment using the command `fhs` to enable binaries
    (let base = pkgs.appimageTools.defaultFhsEnvArgs; in
    pkgs.buildFHSUserEnv (base // {
      name = "fhs";
      targetPkgs = pkgs: (base.targetPkgs pkgs) ++ [pkgs.pkg-config];
      profile = "export FHS=1";
      runScript = "bash";
      extraOutputsToInstall = ["dev"];
    }))
  ];

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}

