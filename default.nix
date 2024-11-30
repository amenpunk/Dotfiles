{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.warpd
    pkgs.qutebrowser
    pkgs.dunst
    pkgs.rofi
    pkgs.flashfocus
    pkgs.wmfocus
  ];
}
