{
  programs = {
    lsd = {
      settings = {
        sorting = {
          reverse = true;
          dir-grouping = "first";
          column = "name";
        };
        recursion = {
          depth = 4;
          enabled = false;
        };
        ignore-globs = [
          "node_modules"
          ".git"
        ];
        icons = {
          when = "always";
          theme = "unicode";
          separator = " ";
        };
        blocks = [
          "permission"
          "group"
          "size"
          "date"
          "name"
        ];
        total-size = true;
        symlink-arrow = "⇒";
        size = "default";
        permission = "octal";
        layout = "oneline";
        indicators = true;
        hyperlink = "always";
        header = true;
        dereference = false;
        date = "relative";
        classic = false;
      };
      colors = {
        size = {
          large = "dark_yellow";
          none = "grey";
          small = "yellow";
        };
      };
      enableAliases = false;
      enable = true;
    };
  };
}
