{ pkgs, ... }:

let
  # Unfree packages
  unfree = import <nixpkgs> {
    config.allowUnfree = true;
  };

  # Unstable packages channel
  unstable = import <unstable> {
    config.allowUnfree = true;  # Allow unfree packages in unstable too
  };
in {
  # Extra / non-required packages
  home.packages = with pkgs; [
    # CLI Tools
    codex
    distrobox-tui
    glances
    lazygit
    podman-tui
    shell-gpt
    tldr
    zellij

    # Development Packages
    buildah
    corepack
    distrobox
    nodejs_24
    rustup
    podman
    podman-compose
    python313
    qemu
    uv

    # Unfree Packages
    unfree.rar

    # Unstable / Latest Packages
    unstable.claude-code
    unstable.gemini-cli
  ];
}
