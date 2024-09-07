{ pkgs, ... }: {
  services = {
    usbmuxd = {
      package = pkgs.usbmuxd2;
      enable = true;
    };
    logind = {
      suspendKey = "ignore";
      rebootKey = "ignore";
      powerKey = "ignore";
      lidSwitch = "ignore";
      hibernateKey = "ignore";
    };
  };
  hardware = {
    keyboard = {
      zsa = {
        enable = true;
      };
      uhk = {
        enable = true;
      };
      qmk = {
        enable = true;
      };
    };
    uinput = {
      enable = true;
    };
  };
}
