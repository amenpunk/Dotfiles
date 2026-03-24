# /home/doom/Dotfiles/nixos/configuration.nix
{ config, lib, pkgs, ... }:

let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz;
in

{
  imports =
    [ # Se actualizó la ruta para apuntar a la configuración de hardware original
      /etc/nixos.bak/hardware-configuration.nix
      (import "${home-manager}/nixos")
    ];

  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.backupFileExtension = "backup";
  # La ruta a home.nix es relativa a la nueva ubicación de este archivo
  home-manager.users.doom = import ./home.nix;

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "thinkpad";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Guatemala";

  services.picom = {
    enable = true;
    backend = "glx";
    fade = true;
  };

  # X11
  programs.light.enable = true;
  hardware.acpilight.enable = true;
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
    videoDrivers = [ "modesetting" ];
    displayManager.sessionCommands = ''
      xwallpaper --zoom ~/Pictures/wall.png
      xset r rate 200 35 &
    '';
  };
  services.xserver.xkb.options = "caps:escape";

  # Audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };

  # Usuario
  users.users.doom = {
    isNormalUser = true;
    description = "edgar";
    extraGroups = [ "wheel" "docker" "networkmanager" ];
    packages = with pkgs; [
      tree
    ];
  };

  # SSH
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      PasswordAuthentication = true;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "doom" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  # Paquetes esenciales del sistema. Las aplicaciones de usuario se han movido a home.nix
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    lua
    nodejs
    python3
    fd
    ripgrep
    gcc
    cmake
    wireplumber
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.droid-sans-mono
    nerd-fonts.fira-code
    nerd-fonts.hack
  ];

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-gnome3;
    enableSSHSupport = true;
  };

  system.stateVersion = "25.05";
}