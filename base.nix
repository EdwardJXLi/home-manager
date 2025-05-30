{ pkgs, ... }:

{
  # Base / core system packages
  home.packages = with pkgs; [
    curl
    git
    htop
    nano
    vim
    zsh
  ];
}
