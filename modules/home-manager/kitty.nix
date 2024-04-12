{config, pkgs, ...}:

{
  programs.kitty = {
    enable = true;
    theme = "Tokyo Night";
    font.name = "Fira Code";
    settings = {
      copy_on_select = true;
      background_opacity = "0.9";
      dynamic_background_opacity = true;
    };
  };
}
