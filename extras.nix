{ pkgs, ... }:

let
  # Unfree packages
  unfree = import <nixpkgs> {
    config.allowUnfree = true;
  };

  # Unstable packages channel
  unstable = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
  }) {
    config.allowUnfree = true;  # Allow unfree packages in unstable too
  };
in {
  # Extra / non-required packages
  home.packages = with pkgs; [
    # CLI Tools
    btop
    glances
    lazygit
    neovim
    p7zip
    shell-gpt
    tldr
    zellij

    # Development Packages
    python313
    uv

    # Unfree Packages
    unfree.claude-code
    unfree.rar
  ];
}
