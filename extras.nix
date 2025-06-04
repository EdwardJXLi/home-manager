{ pkgs, ... }:

let
  unfree = import <nixpkgs> {
    config.allowUnfree = true;
  };
in {
  # Extra / non-required packages
  home.packages = with pkgs; [
    # CLI Tools
    btop
    glances
    lazygit
    neovim
    shell-gpt
    tldr
    zellij

    # Development Packages
    python313
    uv

    # Unfree Packages
    unfree.claude-code
  ];
}
