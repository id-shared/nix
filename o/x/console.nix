{ pkgs, ... }: {
  services = {
    getty = {
      extraArgs = [
        "--nohostname"
      ];
    };
  };

  console = {
    packages = with pkgs; [
      terminus_font
    ];
    keyMap = "us";
    font = "${pkgs.terminus_font}/share/consolefonts/ter-v16n.psf.gz";
    colors = [
      "FFFFFF"
      "C90000"
      "007400"
      "666600"
      "0000D0"
      "6F006F"
      "004444"
      "898989"

      "FFFFFF"
      "C90000"
      "007400"
      "666600"
      "0000D0"
      "6F006F"
      "004444"
      "898989"
    ];
    earlySetup = true;
    enable = true;
  };
}
