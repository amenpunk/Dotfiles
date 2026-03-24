# /home/doom/Dotfiles/nixos/home.nix
{ config, pkgs, ... }:

{
  home.username = "doom";
  home.homeDirectory = "/home/doom";
  home.stateVersion = "25.05";

  # Paquetes de usuario consolidados
  home.packages = with pkgs; [
    # Apps
    brave
    spotify
    pavucontrol
    networkmanagerapplet
    flameshot
    
    # CLI Tools
    bat
    btop
    ranger
    neovim
    helix
    arandr
    xclip
    xdotool
    unzip
    cargo
    python3
    luarocks
    python3Packages.pip
    python3Packages.virtualenv
    (pass.withExtensions (exts: [ exts.pass-otp ]))
    gnupg

    # UI/System utils
    rofi
    dunst
    i3status
    flashfocus
    warpd
    qutebrowser
    wmfocus
    neofetch
    xwallpaper
    brightnessctl
    pamixer
    st-snazzy
    tmux

    # Script con hash corregible
    (stdenv.mkDerivation {
      pname = "passmenu-otp";
      version = "master";
      src = fetchFromGitHub {
        owner = "petrmanek";
        repo = "passmenu-otp";
        rev = "master";
        # NOTA: El hash es incorrecto a propósito. La primera vez que construyas,
        # Nix te dará el hash correcto. Cópialo y pégalo aquí.
        hash = "sha256-2EGomeK/p3uVfgho5xGR11ovJQ2q3cPZoFG+z88DyxA=";
      };
      installPhase = ''
        mkdir -p $out/bin
        cp passmenu-otp $out/bin/
        sed -i 's/dmenu "$@"/rofi -dmenu -i "$@"/g' $out/bin/passmenu-otp
        chmod +x $out/bin/passmenu-otp
      '';
    })
  ];

  # --- Symlinks a tus Dotfiles ---
  # Esto crea enlaces simbólicos. Ahora puedes editar tus archivos de configuración
  # y los cambios se aplicarán al instante, sin necesidad de reconstruir NixOS.

  home.file.".config/i3" = {
    source = /home/doom/Dotfiles/.config/i3;
    recursive = true; # Necesario para directorios
  };
  
  home.file.".config/i3status" = {
    source = /home/doom/Dotfiles/.config/i3status;
    recursive = true;
  };

  home.file.".config/rofi" = {
    source = /home/doom/Dotfiles/.config/rofi;
    recursive = true;
  };

  home.file.".config/qutebrowser" = {
    source = /home/doom/Dotfiles/.config/qutebrowser;
    recursive = true;
  };

  home.file.".config/warpd" = {
    source = /home/doom/Dotfiles/.config/warpd;
    recursive = true;
  };

  home.file.".config/flashfocus" = {
    source = /home/doom/Dotfiles/.config/flashfocus;
    recursive = true;
  };

  # Asumo que tu configuración de neovim está aquí. Si no, ajusta la ruta.
  # home.file.".config/nvim" = {
  #   source = /home/doom/Dotfiles/.config/nvim;
  #   recursive = true;
  # };

  # Archivos individuales
  home.file.".Xresources".source = /home/doom/Dotfiles/.Xresources;
  home.file.".tmux.conf".source = /home/doom/Dotfiles/.tmux.conf;
  # .gitconfig es mejor gestionarlo con programs.git como ya lo tienes.
  # home.file.".gitconfig".source = /home/doom/Dotfiles/.gitconfig;


  # Variable de sesión para que passmenu use rofi
  home.sessionVariables = {
    PASSWORD_STORE_MENU = "rofi -dmenu -i";
  };

  # --- Configuraciones de Programas ---
  programs.git = {
    enable = true;
    userName = "amenpunk";
    userEmail = "ondasycircuitos@gmail.com";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      build = "sudo nixos-rebuild switch";
      cat = "bat";
      str = "xrdb merge /home/doom/.Xresources && kill -USR1 $(pidof st)";
      hx = "helix";
    };
  };
  
  programs.starship.enable = true;
  programs.helix.enable = true;

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };

  programs.home-manager.enable = true;
}
