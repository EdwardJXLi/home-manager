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
    codex
    distrobox-tui
    gemini-cli
    glances
    lazygit
    podman-tui
    shell-gpt
    tldr
    zellij

    # Development Packages
    buildah
    distrobox
    podman
    podman-compose
    python313
    qemu
    uv

    # Unfree Packages
    unfree.rar

    # Unstable / Latest Packages
    unstable.claude-code
  ];
}
