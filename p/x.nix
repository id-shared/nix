{ pkgs, ... }:
{
  imports = [
    ./x/utility/rofi.nix
    ./x/utility/lsd.nix
    ./x/utility/fastfetch.nix
    ./x/textual/pragmata-pro.nix
    ./x/service/remmina.nix
    ./x/service/mako.nix
    ./x/service/glance.nix
    ./x/service/blanket.nix
    ./x/program/freetube.nix
    ./x/monitor/btop.nix
    ./x/develop/code.nix
    ./x/contact/ssh.nix
    ./x/command/foot.nix
    ./x/command/fish.nix
    ./x/channel/i3.nix
    ./x/channel/hyprland.nix
    ./x/browser/firefox.nix
    ./x/browser/chrome.nix
  ];

  xdg = {
    portal = {
      config = {
        common = {
          default = [ "hyprland" ];
        };
      };
      extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
      enable = true;
    };
  };

  systemd = {
    user = {
      startServices = true;
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    sessionVariables = { };
    packages = with pkgs; [
      jetbrains.writerside
      jetbrains.webstorm
      android-studio

      torrential
      parsec-bin
      mpv

      hyprcursor
      clickgen
      minder

      libimobiledevice
      ifuse

      brightnessctl
      libnotify
      xdg-utils
    ];
    language = { };
    keyboard = {
      options = [ "ctrl:swap_lwin_lctl" ];
      layout = "us";
    };
    file = {
      ".config/home-manager/home.nix" = {
        source = ./x/home.nix;
        enable = true;
      };
      "taskfile.yaml" = {
        source = ./x/taskfile.yaml;
        enable = true;
      };
    };
    activation = { };
    username = "x";
    stateVersion = "24.05";
    homeDirectory = "/home/x";
    enableNixpkgsReleaseCheck = false;
    enableDebugInfo = true;
  };

  fonts = {
    fontconfig = {
      enable = true;
    };
  };
}

# pointerCursor =
#   let
#     getFrom = url: hash: name: {
#       x11 = {
#         enable = true;
#       };
#       gtk = {
#         enable = true;
#       };
#       name = name;
#       size = 6;
#       package =
#         pkgs.runCommand "moveUp" { } ''
#           mkdir -p $out/share/icons
#           ln -s ${pkgs.fetchzip {
#             url = url;
#             hash = hash;
#           }} $out/share/icons/${name}
#         '';
#     };
#   in
#   getFrom
#     "https://github.com/id-ekaagr/dot-cursor/releases/download/1.4/dot-cursor.tar.gz"
#     "sha256-VPMt5zuKCyP4b0NosuO+pq0Cvjl9+95vX+NUTazK9Sw="
#     "dot-r";

# ./x/utility/waybar.nix
# ./x/program/looking-glass.nix
# ./x/pointer/dot/red.nix
# ./x/pointer/dot.nix
# ./x/pointer.nix
