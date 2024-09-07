{ pkgs, ... }: {
  home = {
    pointerCursor = {
      pointerCursor = {
        x11 = {
          enable = true;
        };
        gtk = {
          enable = true;
        };
      };
      package =
        pkgs.runCommand "moveUp" { } ''
          mkdir -p $out/share/icons
        '';
      name = "dot-red";
      size = 6;
    };
  };
}
