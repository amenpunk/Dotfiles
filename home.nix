# /home/ecc/Dotfiles/home.nix
# Configuración de usuario gestionada por Home Manager.

{ config, pkgs, ... }:

{
  # Información del usuario.
  home.username = "ecc";
  home.homeDirectory = "/home/ecc";

  # Lista de paquetes a instalar para tu usuario.
  home.packages = with pkgs; [
    # Terminal & Shell
    ranger
    neovim
    
    # UI & Utilidades
    rofi
    dunst
    i3status
    flashfocus
    warpd
    qutebrowser
    
    # Seguridad y Contraseñas
    pass
    gnupg
  ];

  # --- Configuraciones de Programas ---

  # Git
  programs.git = {
    enable = true;
    userName = "ecc";
    userEmail = "your-email@example.com"; # ¡Cambia esto!
  };

  # Zsh como shell principal
  programs.zsh = {
    enable = true;
    # Puedes enlazar tu .zshrc existente si lo prefieres:
    # initExtra = builtins.readFile ./.zshrc;
  };

  # GPG Agent para 'pass'
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };

  # --- Enlazar tus Dotfiles existentes ---
  # Home Manager creará enlaces simbólicos desde las rutas de configuración estándar
  # hacia los archivos en tu repositorio de Dotfiles.

  xdg.configFile = {
    "i3/config".source = ./config/i3/config;
    "i3status/config".source = ./config/i3status/config;
    "rofi/config.rasi".source = ./config/rofi/config.rasi;
    "dunst/dunstrc".source = ./config/dunst/dunstrc;
    "ranger/rc.conf".source = ./config/ranger/rc.conf;
    "qutebrowser/config.py".source = ./config/qutebrowser/config.py;
    "warpd/config".source = ./config/warpd/config;
    "flashfocus/flashfocus.yml".source = ./config/flashfocus/flashfocus.yml;
    "picom/picom.conf".source = ./config/compton/compton.conf; # Asumiendo que es la config de picom
    "alacritty/alacritty.yml".source = ./config/alacritty/alacritty.yml;
  };

  # Versión de estado de Home Manager.
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
