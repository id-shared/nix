{ pkgs, ... }:
{
  programs = {
    firefox = {
      package = pkgs.firefox;
      enable = true;
    };
  };
}
