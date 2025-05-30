{ pkgs, ... }:

let
  unfree = import <nixpkgs> {
    config.allowUnfree = true;
  };

  # Mozilla overlay for Firefox Nightly
  moz-rev = "master";
  moz-url = builtins.fetchTarball { url = "https://github.com/mozilla/nixpkgs-mozilla/archive/${moz-rev}.tar.gz";};
  nightlyOverlay = (import "${moz-url}/firefox-overlay.nix");

  mozillaNightly = import <nixpkgs> {
    overlays = [ nightlyOverlay ];
  };
in {
  # Desktop packages
  home.packages = with pkgs; [
    # Core Apps
    mozillaNightly.latest.firefox-nightly-bin
    vlc

    # KDE Apps
    kdePackages.konsole

    # Unfree Apps
    unfree.vscode
  ];
}
