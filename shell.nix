{ pkgs ? import <nixpkgs> {}, }:

pkgs.mkShell {
  name = "home"
}
