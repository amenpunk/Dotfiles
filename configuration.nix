# /etc/nixos/configuration.nix
# Archivo de configuración principal para un sistema NixOS con i3.

{ config, pkgs, ... }:

{
  imports =
    [ 
      # Importa la configuración de Home Manager para el usuario 'ecc'
      <home-manager/nixos> 
    ];

  # Gestor de arranque (Bootloader).
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda"; # ¡¡IMPORTANTE!! Cambia esto a tu disco principal (ej. /dev/nvme0n1)

  # Configuración de red.
  networking.hostName = "nixos-i3"; # Define el nombre de tu máquina
  networking.networkmanager.enable = true;

  # Zona horaria y localización.
  time.timeZone = "Europe/Madrid"; # Cambia a tu zona horaria
  i18n.defaultLocale = "en_US.UTF-8";

  # Entorno gráfico (X11).
  services.xserver.enable = true;
  services.xserver.layout = "es"; # Configuración del teclado
  services.xserver.xkbOptions = "eurosign:e";

  # Habilitar i3 como gestor de ventanas.
  services.xserver.windowManager.i3.enable = true;
  
  # Habilitar compositor (picom/compton) para transparencias y efectos.
  services.picom.enable = true;

  # Configurar usuario principal.
  users.users.ecc = {
    isNormalUser = true;
    description = "ecc";
    extraGroups = [ "networkmanager" "wheel" "docker" ]; # 'wheel' para sudo, 'docker' para usar Docker
    shell = pkgs.zsh;
  };

  # Instalar paquetes a nivel de sistema.
  # Es mejor instalar la mayoría de paquetes con Home Manager,
  # pero algunos (como Docker o fuentes) van mejor aquí.
  environment.systemPackages = with pkgs; [
    git
    docker
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; }) # Fuentes populares con íconos
    st # Terminal st
  ];

  # Permitir paquetes no libres (si es necesario).
  nixpkgs.config.allowUnfree = true;

  # --- Servicios ---

  # Habilitar el servicio de Docker.
  virtualisation.docker.enable = true;

  # --- Home Manager ---
  # Configuración para que NixOS sepa cómo gestionar tu usuario 'ecc'.
  home-manager.users.ecc = {
    imports = [ ./home.nix ]; # Apunta al archivo que crearemos en tu carpeta de Dotfiles
  };

  # Versión del sistema.
  system.stateVersion = "23.11"; # No cambies esto una vez establecido.
}
