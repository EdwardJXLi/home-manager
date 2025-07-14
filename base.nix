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
    neovim
    vim

    # Networking & Internet
    curl
    dig
    netcat
    openssh
    wget

    # System Tools & Utilities
    btop
    direnv
    htop
    neofetch
    p7zip
    tree
    unzip
    which
    zip
  ];
}
