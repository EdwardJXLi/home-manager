{ pkgs, unstable, llmAgents, ... }:

{
  # Extra / non-required packages
  home.packages = with pkgs; [
    # CLI Tools
    asciinema
    asciinema-agg
    glances
    lazygit
    lynx
    minio-client
    ngrok
    nh
    nix-search-cli
    pgrok
    podman-tui
    radeontop
    shell-gpt
    smartmontools
    tldr
    usbutils
    zellij
    zoxide

    # Development Packages
    android-tools
    buildah
    direnv
    distrobox
    gdb
    nim
    nimble
    nodejs_24
    nph
    ruby
    rustup
    podman
    podman-compose
    python313
    qemu
    uv
    zig
    zls

    # Unfree Packages
    rar

    # LLM Agents (numtide/llm-agents.nix)
    llmAgents.antigravity-cli
    llmAgents.claude-code
    llmAgents.codex
    llmAgents.opencode
    llmAgents.pi
  ];
}
