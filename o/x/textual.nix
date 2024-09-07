{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      unifont
    ];
    fontconfig = {
      subpixel = {
        lcdfilter = "none";
        rgba = "none";
      };
      hinting = {
        autohint = false;
        style = "slight";
        enable = true;
      };
      defaultFonts = {
        serif = [
          "PragmataPro"
        ];
        sansSerif = [
          "PragmataPro Mono"
        ];
        monospace = [
          "PragmataPro Mono Liga"
        ];
        emoji = [
          "Unifont"
        ];
      };
      useEmbeddedBitmaps = false;
      enable = true;
      cache32Bit = false;
      antialias = true;
    };
    enableDefaultPackages = true;
  };
}
