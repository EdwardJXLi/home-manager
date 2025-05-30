{ pkgs, ... }:

let
  unfree = import <nixpkgs> {
    config.allowUnfree = true;
  };
in {
  # Desktop packages
  home.packages = with pkgs; [
    # Core Apps
    firefox
    vlc

    # KDE Apps
    kdePackages.konsole

    # Unfree Apps
    unfree.vscode
  ];
}
