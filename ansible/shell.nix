#!/usr/bin/env nix-shell
{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    vagrant
    libvirt
    qemu
  ];

  shellHook = ''
    ${vagrant}/bin/vagrant --version
    echo
    echo
    echo 'Vagrant'
  '';
}
