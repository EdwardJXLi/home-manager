{ pkgs, ... }:

{
  # Base / core system packages
  home.packages = with pkgs; [
    # Shell & Terminal Utilities
    bash
    file
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
    gdb
    htop
    neofetch
    nettools
    nix-search-cli
    nh
    lsof
    lynx
    p7zip
    tree
    unzip
    usbutils
    which
    zip
  ];
}
