{ pkgs, ... }:

{
  # Extra / non-required packages
  home.packages = with pkgs; [
    # CLI Tools
    btop
    glances
    lazygit
    tldr
  ];
}
