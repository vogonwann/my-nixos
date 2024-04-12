{ pkgs, config, ... }:

{
  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "Ivan Janjić";
    userEmail = "wannjanjic@gmail.com";
    extraConfig = {
      pull.rebase = true;
    };
  };
}
