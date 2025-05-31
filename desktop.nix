{ config, lib, pkgs, ... }:

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

  # Create shorter aliases for nixGL wrapping
  wrapGL = config.lib.nixGL.wrap;
  wrapGlAll = packages: map wrapGL packages;
in {
  # Setup libGL to use system opengl
  nixGL.packages = import (builtins.fetchTarball {
    url = "https://github.com/nix-community/nixGL/archive/main.tar.gz";
  }) { inherit pkgs; };

  nixGL.defaultWrapper = "mesa";  # Use mesa for AMD
  nixGL.installScripts = [ "mesa" ];  # Install nixGLMesa script

  # Desktop packages
  home.packages = wrapGlAll (with pkgs; [
    # Core Apps
    audacity
    bitwarden-desktop
    chromium
    gimp
    gparted
    obs-studio
    vlc

    # Firefox Nightly
    mozillaNightly.latest.firefox-nightly-bin

    # Unfree Apps
    unfree.discord-canary
    unfree.slack
    unfree.vscode
  ]);

  # Fix cursors for Electron apps
  home.sessionVariables = {
    XCURSOR_SIZE = 24;
    XCURSOR_PATH = "/usr/share/icons";
  };
}
