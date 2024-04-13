{ pkgs, config, ... }:

{
  programs.helix = {
  enable = true;
  settings = {
    theme = "nord_night_transparent";
  };

  languages.language = [{
    name = "nix";
    auto-format = true;
    formatter.command = "${pkgs.nixfmt-classic}/bin/nixfmt-classic";
  }
  {
    name = "rust";
    auto-format = true;
    scope = "source.rust";
    language-servers = ["rust-analyzer"];
  }];

  languages.language-server.rust-analyzer.config.check = {
    command = "clippy";
  };

  themes = {
    nord_night_transparent = {
      "inherits" = "nord-night";
      "ui.background" = { };
    };
  };
};
}

