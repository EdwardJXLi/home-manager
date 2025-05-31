{ ... }:

{
  # Home Manager for `root` user
  home.username = "root";
  home.homeDirectory = "/root";

  # Set Home Manager config version
  home.stateVersion = "25.05";

  # Install base and desktop applications
  imports = [
    ./base.nix
    ./extras.nix
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
