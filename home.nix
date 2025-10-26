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
		build = "sudo nixos-rebuild switch";
		cat = "bat";
		str = "xrdb merge /home/doom/.Xresources && kill -USR1 $(pidof st)";
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
  home.file.".config/i3status".source = /home/doom/Dotfiles/.config/i3status;
  home.file.".tmux.conf".source = /home/doom/Dotfiles/.tmux.conf;
  home.file.".Xresources".source = /home/doom/Dotfiles/.Xresources;
  home.file.".gitconfig".source = /home/doom/Dotfiles/.gitconfig;
  home.file.".config/rofi".source = /home/doom/Dotfiles/.config/rofi;
  home.file.".config/qutebrowser".source = /home/doom/Dotfiles/.config/qutebrowser;

  # Versión de estado de Home Manager.
  programs.home-manager.enable = true;
}
