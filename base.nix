{ pkgs, ... }:

{
  # Base / core system packages
  home.packages = with pkgs; [
    # Shell & Terminal Utilities
    bash
    git
    less
    screen
    tmux
    zsh

    # Text Editors
    nano
    vim

    # Networking & Internet
    curl
    dig
    netcat
    openssh
    wget

    # System Tools & Utilities
    direnv
    htop
    tree
    unzip
    which
    zip
  ];
}
