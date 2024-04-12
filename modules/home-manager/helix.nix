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
  }];

  themes = {
    nord_night_transparent = {
      "inherits" = "nord-night";
      "ui.background" = { };
    };
  };
};
}

