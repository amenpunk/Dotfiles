# /home/ecc/Dotfiles/home.nix
# Configuración de usuario gestionada por Home Manager.

{ config, pkgs, ... }:

{
  # Información del usuario.
  home.username = "doom";
  home.homeDirectory = "/home/doom";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    networkmanagerapplet
    bat
    ranger
    neovim
    arandr
    rofi
    dunst
    i3status
    flashfocus
    warpd
    qutebrowser
    (pass.withExtensions (exts: [ exts.pass-otp ]))
    xdotool
    (stdenv.mkDerivation {
      pname = "passmenu-otp";
      version = "master";
      src = fetchFromGitHub {
        owner = "petrmanek";
        repo = "passmenu-otp";
        rev = "master"; 
        # Usamos el "Fake Hash Trick" de Nix. Deja este hash falso por ahora:
        hash = "sha256-2EGomeK/p3uVfgho5xGR11ovJQ2q3cPZoFG+z88DyxA="; 
      };
      installPhase = ''
        mkdir -p $out/bin
        cp passmenu-otp $out/bin/
        # Parcheamos el script para que use rofi de forma nativa
        sed -i 's/dmenu "$@"/rofi -dmenu -i "$@"/g' $out/bin/passmenu-otp
        chmod +x $out/bin/passmenu-otp
      '';
    })
    gnupg
    helix
    xclip
    cargo
    python3
    luarocks
    python3Packages.pip
    python3Packages.virtualenv
  ];

  # --- Configuraciones de Programas ---
  programs.git = {
    enable = true;
    userName = "amenpunk";
    userEmail = "ondasycircuitos@gmail.com";
  };

  # Zsh como shell principal
  programs.bash = {
    enable = true;
	shellAliases = {
		build = "sudo nixos-rebuild switch";
		cat = "bat";
		str = "xrdb merge /home/doom/.Xresources && kill -USR1 $(pidof st)";
		hx = "helix";
	};
  };
  
  #programs.tmux = {
  # enable = true;
  #}
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      # add_newline = false;

      # character = {
      #   success_symbol = "[➜](bold green)";
      #   error_symbol = "[➜](bold red)";
      # };

      # package.disabled = true;
    };
  };

  programs.helix = { 
  	enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
  };

  home.file.".config/i3".source = /home/doom/Dotfiles/.config/i3;
  home.file.".config/i3status".source = /home/doom/Dotfiles/.config/i3status;
  home.file.".tmux.conf".source = /home/doom/Dotfiles/.tmux.conf;
  home.file.".Xresources".source = /home/doom/Dotfiles/.Xresources;
  home.file.".gitconfig".source = /home/doom/Dotfiles/.gitconfig;
  home.file.".config/rofi".source = /home/doom/Dotfiles/.config/rofi;
  home.file.".config/qutebrowser".source = /home/doom/Dotfiles/.config/qutebrowser;
  home.file.".config/warpd".source = /home/doom/Dotfiles/.config/warpd;

  home.file.".config/flashfocus" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/.config/flashfocus";
    recursive = true;
  };
  ## home.file.".config/nvim".source = /home/doom/vimrc;

  # Versión de estado de Home Manager.
  programs.home-manager.enable = true;
}
