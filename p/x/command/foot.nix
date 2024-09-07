let
  text-size = 11.25;
  text-high = 1;
in
{
  programs = {
    foot = {
      settings = {
        url = { };
        text-bindings = {
          "\\x03" = "Control+q";
        };
        scrollback = {
          multiplier = 1.0;
          lines = 65536;
          indicator-position = "relative";
          indicator-format = "percentage";
        };
        mouse = {
          hide-when-typing = "yes";
          alternate-scroll-mode = "yes";
        };
        main = {
          term = "foot";
          shell = "fish";
          selection-target = "primary";
          pad = "0x0";
          login-shell = "no";
          line-height = text-size * text-high;
          letter-spacing = 0;
          initial-window-size-pixels = "3840x2160";
          initial-window-mode = "fullscreen";
          font-size-adjustment = 0;
          font = "monospace:size=${builtins.toString text-size}";
          dpi-aware = "no";
          box-drawings-uses-font-glyphs = "yes";
          bold-text-in-bright = "no";
        };
        key-bindings = {
          spawn-terminal = "Control+t";
          search-start = "Control+f";
          font-reset = "Control+0";
          font-increase = "Control+equal";
          font-decrease = "Control+minus";
          clipboard-paste = "Control+v XF86Paste";
          clipboard-copy = "Control+c XF86Copy";
        };
        environment = { };
        cursor = {
          style = "beam";
          color = "FFFFFF FF0000";
          blink = "no";
          beam-thickness = "2px";
        };
        csd = {
          size = builtins.floor text-size;
          preferred = "server";
        };
        colors = {
          regular0 = "888888";
          regular1 = "C90000";
          regular2 = "007400";
          regular3 = "666600";
          regular4 = "0000D0";
          regular5 = "6F006F";
          regular6 = "004444";
          regular7 = "898989";
          bright0 = "888888";
          bright1 = "C90000";
          bright2 = "007400";
          bright3 = "666600";
          bright4 = "0000D0";
          bright5 = "6F006F";
          bright6 = "004444";
          bright7 = "898989";
          dim0 = "888888";
          dim1 = "C90000";
          dim2 = "007400";
          dim3 = "666600";
          dim4 = "0000D0";
          dim5 = "6F006F";
          dim6 = "004444";
          dim7 = "898989";

          flash-alpha = 0.5;
          flash = "FFFF00";
          foreground = "000000";
          background = "FFFFFF";
          alpha = 1.0;
        };
      };
      server = {
        enable = false;
      };
      enable = true;
    };
  };
}
