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
    tldr

    # Unfree Packages
    unfree.claude-code
  ];
}
