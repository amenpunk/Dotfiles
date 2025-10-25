# /home/ecc/Dotfiles/home.nix
# Configuración de usuario gestionada por Home Manager.

{ config, pkgs, ... }:

{
  # Información del usuario.
  home.username = "doom";
  home.homeDirectory = "/home/doom";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    bat
    ranger
    neovim
    rofi
    dunst
    i3status
    flashfocus
    warpd
    qutebrowser
    pass
    gnupg
  ];

  # --- Configuraciones de Programas ---
  programs.git = {
    enable = true;
    userName = "ecc";
    userEmail = "ondasycircuitos@gmail.com"; # ¡Cambia esto!
  };

  # Zsh como shell principal
  programs.bash = {
    enable = true;
	shellAliases = {
		nrs = "sudo nixos-rebuild switch";
		cat = "bat";
	};
  };
  
  #programs.tmux = {
  # enable = true;
  #}

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };

  home.file.".config/i3".source = /home/doom/Dotfiles/.config/i3;

  # --- Enlazar tus Dotfiles existentes ---
  # Home Manager creará enlaces simbólicos desde las rutas de configuración estándar
  # hacia los archivos en tu repositorio de Dotfiles.

  #xdg.configFile = {
  #  "i3/config".source = ./config/i3/config;
  #  "i3status/config".source = ./config/i3status/config;
  #  "rofi/config.rasi".source = ./config/rofi/config.rasi;
  #  "dunst/dunstrc".source = ./config/dunst/dunstrc;
  #  "ranger/rc.conf".source = ./config/ranger/rc.conf;
  #  "qutebrowser/config.py".source = ./config/qutebrowser/config.py;
  #  "warpd/config".source = ./config/warpd/config;
  #  "flashfocus/flashfocus.yml".source = /home/doom/config/flashfocus/flashfocus.yml;
  #  #"alacritty/alacritty.yml".source = ./config/alacritty/alacritty.yml;
  #};

  # Versión de estado de Home Manager.
  programs.home-manager.enable = true;
}
