{ ... }:

{
  # Home Manager for `hydra` user
  home.username = "hydra";
  home.homeDirectory = "/home/hydra";

  # Set Home Manager config version
  home.stateVersion = "25.05";

  # Install base and desktop applications
  imports = [
    ./base.nix
    ./extras.nix
    ./desktop.nix
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
