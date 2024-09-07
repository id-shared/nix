{ pkgs, ... }:
{
  programs = {
    chromium = {
      package = pkgs.google-chrome;
      enable = true;
    };
  };
}
