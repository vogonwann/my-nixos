{ pkgs, config, ... }:

{
  nixpkgs.config.allowUnfree = true;
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      rust-lang.rust-analyzer
      ms-vscode-remote.remote-containers
      arcticicestudio.nord-visual-studio-code
      golang.go
      ms-dotnettools.csharp
      vscode-icons-team.vscode-icons
      esbenp.prettier-vscode
      dracula-theme.theme-dracula
    ];
  };
}
