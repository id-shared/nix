{ pkgs, ... }:
{
  xdg = {
    sounds = {
      enable = true;
    };
    portal = {
      wlr = {
        settings = { };
        enable = true;
      };
      extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
      config = {
        common = {
          default = [ "wlr" ];
        };
      };
      xdgOpenUsePortal = false;
      enable = true;
    };
    mime = {
      defaultApplications = { };
      enable = true;
    };
    menus = {
      enable = true;
    };
    icons = {
      enable = true;
    };
    autostart = {
      enable = true;
    };
  };

  security = {
    pam = {
      services = {
        hyprlock = { };
      };
      loginLimits = [
        {
          value = "1048576";
          type = "soft";
          item = "nofile";
          domain = "*";
        }
      ];
    };
    chromiumSuidSandbox = {
      enable = true;
    };
  };

  programs = {
    steam = {
      remotePlay = {
        openFirewall = false;
      };
      extest = {
        enable = true;
      };
      enable = true;
      package = with pkgs; steam.override { extraPkgs = pkgs: [ attr ]; };
    };
    mtr = {
      enable = true;
    };
    git = {
      config = {
        user = {
          name = "x";
          email = "x@x.x";
        };
        init = {
          defaultBranch = "main";
        };
      };
      enable = true;
    };
  };
}
